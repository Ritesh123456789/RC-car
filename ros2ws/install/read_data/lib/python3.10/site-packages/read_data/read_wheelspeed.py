#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from eufs_msgs.msg import WheelSpeedsStamped
from std_msgs.msg import String

class WheelSpeedSubscriber(Node):
    def __init__(self):
        super().__init__('wheel_speed_subscriber')
        self.subscription = self.create_subscription(
            WheelSpeedsStamped,
            '/ground_truth/wheel_speeds',
            self.listener_callback,
            10)
        self.subscription  # prevent unused variable warning
        self.publisher = self.create_publisher(String, 'dataNode', 10)

    def listener_callback(self, msg: WheelSpeedsStamped):
        # Create a list with 'wheelspeed' and the latest (lb_speed, rb_speed)
        wheelspeed_data = ['wheelspeed', (msg.speeds.lb_speed, msg.speeds.rb_speed)]

        # Convert the list to a string to send as a message
        msg_to_publish = String()
        msg_to_publish.data = str(wheelspeed_data)

        # Publish the message to 'testnode'
        self.publisher.publish(msg_to_publish)

def main(args=None):
    rclpy.init(args=args)
    node = WheelSpeedSubscriber()
    rclpy.spin(node)
    rclpy.shutdown()