import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/ritesh/rc-car/ros2ws/install/eufs_msgs'
