#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Imu
from eufs_msgs.msg import WheelSpeedsStamped, ConeArrayWithCovariance
import serial
import time
import math

class CombinedSubscriber(Node):
    def __init__(self):
        super().__init__('give_control')

        
        self.create_subscription(Imu, '/imu', self.imu_callback, 10)
        self.create_subscription(WheelSpeedsStamped, '/ground_truth/wheel_speeds', self.wheelspeed_callback, 10)
        self.create_subscription(ConeArrayWithCovariance, '/fusion/cones', self.cone_callback, 10)

        
        # self.serial_port = '/dev/ttyUSB0'  # change
        # self.baud_rate = 9600
        # self.arduino = serial.Serial(self.serial_port, self.baud_rate, timeout=1)
        # time.sleep(2) 

        
        self.imu_data = None
        self.wheelspeed_data = None
        self.cone_data = None

    def imu_callback(self, msg: Imu):
        #tuple
        self.imu_data = (msg.orientation.x, msg.orientation.y, msg.orientation.z, msg.orientation.w)
        if self.cone_data is not None:
            self.check_and_calculate_control()
        

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
        if self.imu_data is not None:
            self.check_and_calculate_control()
       
    
    
    def check_and_calculate_control(self):
        
        if(self.cone_data is not None):
            steering_angle = self.calculate_steering_angle(self.cone_data)
        #self.get_logger().info(str(steering_angle))
        #self.send_angle_to_arduino(steering_angle)

        # Log 
        self.get_logger().info(f"Steering Angle Sent: {steering_angle} degrees")

    def quaternion_to_yaw(self, orientation):
    
        x = orientation[0]
        y = orientation[1]
        z = orientation[2]
        w = orientation[3]

        # Yaw (rotation around z-axis)
        siny_cosp = 2 * (w * z + x * y)
        cosy_cosp = 1 - 2 * (y * y + z * z)
        yaw = math.atan2(siny_cosp, cosy_cosp)

        return yaw  # Only returns the yaw angle

    def calculate_steering_angle(self, cone_data):
        
        
        if cone_data['blue'] and cone_data['yellow']:
            # closest cones
            closest_blue_cone = min(cone_data['blue'], key=lambda c: c[0])  
            closest_yellow_cone = min(cone_data['yellow'], key=lambda c: c[0]) 

            midpoint_x = (closest_blue_cone[0] + closest_yellow_cone[0]) / 2
            midpoint_y = (closest_blue_cone[1] + closest_yellow_cone[1]) / 2

            angle_to_midpoint = math.atan2(midpoint_y, midpoint_x)

            
            if self.imu_data:
                orientation_quat = self.imu_data  
                car_heading = self.quaternion_to_yaw(orientation_quat)  
                
                steering_angle = angle_to_midpoint - car_heading

                # Normalize [-pi, pi]
                steering_angle = math.atan2(math.sin(steering_angle), math.cos(steering_angle))

                steering_angle_degrees = math.degrees(steering_angle)
                
                return max(min(steering_angle_degrees, 30), -30)  # Limit angle [-30,30]
            else:
                return 0  
        else:
            return 0
    

    def send_angle_to_arduino(self, angle):

        if self.cone_data is not None:
            steering_angle = self.calculate_steering_angle(self.cone_data)
            # Print the steering angle instead of sending it to Arduino
            print(f"Steering Angle Calculated: {steering_angle} degrees")
            # Log the steering angle
            self.get_logger().info(f"Steering Angle Sent: {steering_angle} degrees")

def main(args=None):
    print("Stuff")
    rclpy.init(args=args)
    print("before node")
    node = CombinedSubscriber()
    print("after node")
    rclpy.spin(node)
    rclpy.shutdown()
    
if __name__ == '__main__':
    main()