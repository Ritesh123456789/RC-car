#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from eufs_msgs.msg import ConeArrayWithCovariance
from std_msgs.msg import String

class ConeSubscriber(Node):
    def __init__(self):
        super().__init__('cone_subscriber')
        self.subscription = self.create_subscription(
            ConeArrayWithCovariance,
            '/fusion/cones',
            self.listener_callback,
            10)
        self.publisher = self.create_publisher(String, 'dataNode', 10)

    def listener_callback(self, msg):
        
        cone_data = ['conedata', {'blue': [], 'yellow': [], 'orange': [], 'big_orange': [], 'unknown': []}]

        # Extract the latest cone positions
        for cone in msg.blue_cones:
            cone_data[1]['blue'].append((cone.point.x, cone.point.y, cone.point.z))
        for cone in msg.yellow_cones:
            cone_data[1]['yellow'].append((cone.point.x, cone.point.y, cone.point.z))
        for cone in msg.orange_cones:
            cone_data[1]['orange'].append((cone.point.x, cone.point.y, cone.point.z))
        for cone in msg.big_orange_cones:
            cone_data[1]['big_orange'].append((cone.point.x, cone.point.y, cone.point.z))
        for cone in msg.unknown_color_cones:
            cone_data[1]['unknown'].append((cone.point.x, cone.point.y, cone.point.z))

        # Prepare data to be published
        msg_to_publish = String()
        msg_to_publish.data = str(cone_data)
        self.publisher.publish(msg_to_publish)
        # Print the cone dictionary
        #self.get_logger().info(f'Cone Dictionary: {self.cone_dict}')

def main(args=None):
    rclpy.init(args=args)
    node = ConeSubscriber()
    rclpy.spin(node)
    rclpy.shutdown()