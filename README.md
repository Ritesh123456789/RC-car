# RC-car

# Autonomous RC Car Navigation through Cone-Based Tracks

This project contains the codebase that enables an RC car to autonomously navigate through a track defined by cones. The system leverages a combination of **ROS**, **simulation environments**, and **physical hardware (Raspberry Pi and Arduino)** for both virtual and real-world testing.

---

## Features

- **Autonomous Cone Navigation**:
  - The car uses cone placements to navigate through a predefined track.
  - Real-time processing of cone data to determine steering angles and control signals.
  - Uses PID and other logic-based functionalities to improve car speed through the track.

- **Simulation Testing**:
  - Includes ROS-based simulations for testing navigation logic without requiring physical hardware.
  - ROS bags (`rosbags`) are used for replaying sensor data to validate algorithms.

- **Physical Implementation**:
  - The code integrates with hardware via **Raspberry Pi** and **Arduino**.
  - Control signals are sent over a serial connection to physically guide the RC car.

---

## Repository Structure

- `ros2/`: Contains ROS2 workspace with packages for cone detection, localization, and control.
- `imu_subscriber.py`: Code to process IMU data for stability and control.
- `serial_to_imu.py`: Script to handle IMU data sent over a serial connection.
- `rosbags/`: Example ROS bag files for testing cone-based navigation logic.
- `short_sim/`: Simulation scripts and environments for testing cone navigation in a virtual track.
- `short_sim_with_cones/`: Enhanced simulations with realistic cone placements.

---

## Dependencies

- **ROS2 Humble**: For simulation and ROS-related operations.
- **Arduino IDE**: To flash firmware onto the Arduino for motor control.
- **Python 3.x**: For IMU and serial communication scripts.

---

## How It Works

### Simulation
- Use the ROS-based simulator to test the RC car's navigation logic.
- Simulations utilize cone position data to determine the car's path.

### Physical RC Car
- **Hardware**:
  - Raspberry Pi acts as the central controller.
  - Arduino handles low-level motor control and execution of commands.
- **Software**:
  - Cone data processed by Raspberry Pi is converted into steering and throttle commands.
  - Commands are transmitted to Arduino over a serial connection.

### Testing with ROS Bags
- Use `rosbags` to record and replay cone and sensor data for debugging and validation.
- Replay recorded scenarios to fine-tune navigation algorithms.

### Wach the demo(thumbnail will take you to youtube)

[![Watch the demo](https://img.youtube.com/vi/DEIfJdPVjL8/0.jpg)](https://youtu.be/DEIfJdPVjL8)


