import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Imu

class IMUSubscriber(Node):
    def __init__(self):
        super().__init__('imu_subscriber')
        self.subscription = self.create_subscription(
            Imu,
            '/imu',  # The topic name
            self.listener_callback,
            10)
        self.subscription  # prevent unused variable warning

    def listener_callback(self, msg):
        self.get_logger().info(f'IMU Data: Orientation x: {msg.orientation.x}, y: {msg.orientation.y}, z: {msg.orientation.z}')
        # You can add more processing here

def main(args=None):
    rclpy.init(args=args)
    imu_subscriber = IMUSubscriber()
    rclpy.spin(imu_subscriber)
    imu_subscriber.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
