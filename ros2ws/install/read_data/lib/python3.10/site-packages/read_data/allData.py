#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Imu
from eufs_msgs.msg import WheelSpeedsStamped, ConeArrayWithCovariance
from std_msgs.msg import String

class CombinedSubscriber(Node):
    def __init__(self):
        super().__init__('combined_subscriber')

        # Subscriptions for IMU, Wheel Speeds, and Cone Data
        self.create_subscription(Imu, '/imu', self.imu_callback, 10)
        self.create_subscription(WheelSpeedsStamped, '/ground_truth/wheel_speeds', self.wheelspeed_callback, 10)
        self.create_subscription(ConeArrayWithCovariance, '/fusion/cones', self.cone_callback, 10)

        # Publisher for combined data
        self.publisher = self.create_publisher(String, 'testnode', 10)

        # Variables to store the latest data for each type
        self.imu_data = None
        self.wheelspeed_data = None
        self.cone_data = None

    def imu_callback(self, msg: Imu):
        # Store IMU data as a tuple of (x, y, z) orientation
        self.imu_data = (msg.orientation.x, msg.orientation.y, msg.orientation.z)
        self.check_and_publish_data()

    def wheelspeed_callback(self, msg: WheelSpeedsStamped):
        # Store wheel speeds as a tuple of (left_back, right_back)
        self.wheelspeed_data = (msg.speeds.lb_speed, msg.speeds.rb_speed)
        self.check_and_publish_data()

    def cone_callback(self, msg: ConeArrayWithCovariance):
        # Store cone data by extracting x, y, z positions for each color
        self.cone_data = {
            'blue': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.blue_cones],
            'yellow': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.yellow_cones],
            'orange': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.orange_cones],
            'big_orange': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.big_orange_cones],
            'unknown': [(cone.point.x, cone.point.y, cone.point.z) for cone in msg.unknown_color_cones]
        }
        self.check_and_publish_data()

    def check_and_publish_data(self):
        # Only publish data if we have received from all three topics
        if self.imu_data and self.wheelspeed_data and self.cone_data:
            combined_data = [self.imu_data, self.wheelspeed_data, self.cone_data]

            # Convert the combined data to string format for publishing
            msg_to_publish = String()
            msg_to_publish.data = str(combined_data)
            self.publisher.publish(msg_to_publish)

            # Log the published data
            self.get_logger().info(f"Published Combined Data: {combined_data}")

            # Reset data for the next interval (no accumulation)
            self.imu_data = None
            self.wheelspeed_data = None
            self.cone_data = None

def main(args=None):
    rclpy.init(args=args)
    node = CombinedSubscriber()
    rclpy.spin(node)
    rclpy.shutdown()