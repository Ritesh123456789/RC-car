#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Imu
from std_msgs.msg import String

class IMUSubscriber(Node):
    def __init__(self):
        super().__init__('imu_subscriber')
        self.subscription = self.create_subscription(Imu, '/imu', self.imu_callback, 10)
        self.publisher = self.create_publisher(String, 'dataNode', 10)

    def imu_callback(self, msg: Imu):
         # Create a list with 'imu' and the latest (x, y, z) orientation
        imu_data = ['imu', (msg.orientation.x, msg.orientation.y, msg.orientation.z)]

        # Convert the list to a string to send as a message
        msg_to_publish = String()
        msg_to_publish.data = str(imu_data)

        # Publish the message to 'testnode'
        self.publisher.publish(msg_to_publish)

        #self.get_logger().info("(" + str(msg.orientation.x)+", "+str(msg.orientation.y)+", "+str(msg.orientation.z)+")")


def main(args=None):
    rclpy.init(args=args)
    node = IMUSubscriber()
    rclpy.spin(node)
    rclpy.shutdown()    

