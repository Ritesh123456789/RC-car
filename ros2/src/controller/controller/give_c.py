#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Imu
from ackermann_msgs.msg import AckermannDriveStamped
from eufs_msgs.msg import WheelSpeedsStamped, ConeArrayWithCovariance
import math
import time


class PID:
    def __init__(self, P, I, D):
        self.P = P 
        self.I = I  
        self.D = D
        self.prev_time = time.perf_counter()
        self.prev_error = 0.0
        self.error_integral = 0.0

    def compute(self, error):
        current_time = time.perf_counter()
        dt = current_time - self.prev_time if self.prev_time != 0 else 0.1
        self.prev_time = current_time

        P_out = self.P * error

        self.error_integral += error * dt
        I_out = self.I * self.error_integral

        error_derivative = (error - self.prev_error) / dt
        D_out = self.D * error_derivative

        self.prev_error = error

        return P_out + I_out + D_out


class CombinedSubscriber(Node):
    def __init__(self):
        super().__init__('give_control')

        self.create_subscription(Imu, '/imu', self.imu_callback, 10)
        self.create_subscription(WheelSpeedsStamped, '/ground_truth/wheel_speeds', self.wheelspeed_callback, 10)
        self.create_subscription(ConeArrayWithCovariance, '/fusion/cones', self.cone_callback, 10)

        self.control_publisher = self.create_publisher(AckermannDriveStamped, '/cmd', 10)

        self.imu_data = None
        self.wheelspeed_data = None
        self.cone_data = None

        self.target_speed = 5.0

        self.steer_pid = PID(P=1.0, I=0.01, D=0.1)  

    def imu_callback(self, msg: Imu):
        self.imu_data = (msg.orientation.x, msg.orientation.y, msg.orientation.z, msg.orientation.w)

    def wheelspeed_callback(self, msg: WheelSpeedsStamped):
        self.wheelspeed_data = (msg.speeds.lb_speed, msg.speeds.rb_speed)

    def cone_callback(self, msg: ConeArrayWithCovariance):
        self.cone_data = {
            'blue': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.blue_cones],
            'yellow': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.yellow_cones],
            'orange': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.orange_cones],
            'big_orange': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.big_orange_cones],
            'unknown': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.unknown_color_cones]
        }
        self.check_and_calculate_control()

    def check_and_calculate_control(self):
        if self.cone_data:
            desired_heading = self.calculate_desired_heading(self.cone_data)
            current_heading = self.quaternion_to_yaw(self.imu_data) if self.imu_data else 0.0

            steering_error = desired_heading - current_heading
            steering_error = math.atan2(math.sin(steering_error), math.cos(steering_error))
            steering_angle = self.steer_pid.compute(steering_error)
            steering_angle_deg = max(min(math.degrees(steering_angle), 30), -30)
            steering_angle_rad = math.radians(steering_angle_deg)

            # Publish control message
            control_msg = AckermannDriveStamped()
            control_msg.header.stamp = self.get_clock().now().to_msg()
            control_msg.drive.steering_angle = steering_angle_rad  # Publish in radians
            control_msg.drive.speed = self.target_speed
            control_msg.drive.acceleration = 0.0

            self.control_publisher.publish(control_msg)

            # Log for debugging
            self.get_logger().info(f"Steering Error: {steering_error:.2f} rad, Steering Angle: {steering_angle_deg:.2f} deg")
            self.get_logger().info(f"Speed: {self.target_speed:.2f} m/s")

    def quaternion_to_yaw(self, orientation):
        x, y, z, w = orientation
        siny_cosp = 2 * (w * z + x * y)
        cosy_cosp = 1 - 2 * (y * y + z * z)
        return math.atan2(siny_cosp, cosy_cosp)

    def calculate_desired_heading(self, cone_data):
        if cone_data['blue'] and cone_data['yellow']:
            closest_blue_cone = min(cone_data['blue'], key=lambda c: c[0])
            closest_yellow_cone = min(cone_data['yellow'], key=lambda c: c[0])

            midpoint_x = (closest_blue_cone[0] + closest_yellow_cone[0]) / 2
            midpoint_y = (closest_blue_cone[1] + closest_yellow_cone[1]) / 2

            return math.atan2(midpoint_y, midpoint_x) 
        elif cone_data['blue']:
            return math.atan2(cone_data['blue'][0][1], cone_data['blue'][0][0]) - 0.5  # Radians
        elif cone_data['yellow']:
            return math.atan2(cone_data['yellow'][0][1], cone_data['yellow'][0][0]) + 0.5  # Radians
        else:
            return 0.0 


def main(args=None):
    rclpy.init(args=args)
    node = CombinedSubscriber()
    rclpy.spin(node)
    rclpy.shutdown()


if __name__ == '__main__':
    main()