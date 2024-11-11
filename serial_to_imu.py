import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import serial

class IMUSerialNode(Node):
    def __init__(self):
        super().__init__('imu_serial_node')
        self.publisher_ = self.create_publisher(String, 'imu_data', 10)
        self.serial_port = serial.Serial('/dev/ttyUSB0', 9600, timeout=1)
        self.timer = self.create_timer(0.1, self.read_and_publish_imu)

    def read_and_publish_imu(self):
        if self.serial_port.in_waiting > 0:
            imu_data = self.serial_port.readline().decode('utf-8').rstrip()
            self.publisher_.publish(String(data=imu_data))
            self.get_logger().info(f"Published IMU data: {imu_data}")

def main(args=None):
    rclpy.init(args=args)
    imu_serial_node = IMUSerialNode()
    rclpy.spin(imu_serial_node)
    imu_serial_node.destroy_node()
    rclpy.shutdown()

if __name__ == '__main__':
    main()
