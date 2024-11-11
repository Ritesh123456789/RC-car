#include <Servo.h>
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BNO055.h>
#include <utility/imumaths.h>

// Function prototypes
void receiveAndExecuteMotorAndSteeringCommands();
void sendIMUData();
void sendHallEffectSensorData();
void calculateVelocity();

Adafruit_BNO055 bno = Adafruit_BNO055(55);
Servo esc, steer;

const int escPin = 10;
const int steeringPin = 11;
const int hallPin = 2;
const int ledPin = 13;
const float wheelDiameter = 0.114; // 11.4 cm
const float pi = 3.14159;
const float wheelCircumference = pi * wheelDiameter;
volatile unsigned long lastPulseTime = 0;
volatile unsigned long currentPulseTime = 0;
volatile bool pulseDetected = false;
float velocity = 0.0;
const unsigned long noPulseTimeout = 2000; // 2 second timeout

void setup() {
  // Attach ESC and steering
  esc.attach(escPin, 1000, 2000);
  esc.writeMicroseconds(1500);

  steer.attach(steeringPin, 1000, 2000);
  steer.writeMicroseconds(1500);

  // Initialize serial communication
  Serial.begin(9600);

  // Initialize Hall sensor and LED pin modes
  pinMode(hallPin, INPUT);
  pinMode(ledPin, OUTPUT);

  // Initialize the BNO055 sensor
  if(!bno.begin()) {
    Serial.println("Ooops, no BNO055 detected ... Check your wiring or I2C ADDR!");
    while(1);
  }

  delay(1000);
  bno.setExtCrystalUse(true);

  // Attach interrupt to Hall effect sensor
  attachInterrupt(digitalPinToInterrupt(hallPin), hallEffectDetected, FALLING); // Falling edge for detection
}

void loop() {
  // First Check if there are Motor and Steering Commands to Execute
  receiveAndExecuteMotorAndSteeringCommands();

  // Send IMU data to the raspberry pi
  sendIMUData();
  
  // Check Hall effect sensor and send relevant sensor data
  sendHallEffectSensorData();
}

void receiveAndExecuteMotorAndSteeringCommands() {
  if (!Serial.available()) return;
  
  String steeringStr = "", accelStr = "";
  bool onSteering = true;

  while (Serial.available()) {
    char c = Serial.read();
    if (c == ' ') {
      onSteering = false;
    }
    if (onSteering) steeringStr += c;
    else accelStr += c;
    delay(5);
  }

  // Parse steering and motor commands
  float steeringInput = steeringStr.toFloat();
  steeringInput = constrain(steeringInput, 1000, 2000);
  steer.writeMicroseconds(steeringInput);

  float accelInput = accelStr.toFloat();
  accelInput = constrain(accelInput, 1000, 2000);
  esc.writeMicroseconds(accelInput);
}

void sendIMUData() {
  sensors_event_t event;
  bno.getEvent(&event);

  // Get yaw (heading) and acceleration values
  double yaw = event.orientation.x;
  imu::Vector<3> accel = bno.getVector(Adafruit_BNO055::VECTOR_LINEARACCEL);

  // Send data over serial to Raspberry Pi
  // Serial.print("Yaw: ");
  // Serial.println(yaw);

  // Serial.print("X Acceleration: ");
  // Serial.println(accel.x());

  // Serial.print("Y Acceleration: ");
  // Serial.println(accel.y());
}

// Check Hall effect sensor and update LED
void sendHallEffectSensorData() {
  if (pulseDetected) {
    digitalWrite(ledPin, HIGH);
    digitalWrite(ledPin, LOW);
    pulseDetected = false;
  }
  unsigned long timeNow = millis();

  // Check if enough time has passed without a pulse (timeout for zero velocity)
  if (timeNow - currentPulseTime > noPulseTimeout) {
    velocity = 0.0; // No pulse for a while means no movement
  } 
  else if (lastPulseTime > 0 && currentPulseTime > lastPulseTime) {
    unsigned long timeDifference = currentPulseTime - lastPulseTime; // Time in milliseconds

    // Convert time difference to seconds
    float timeInSeconds = timeDifference / 1000.0;

    // Calculate the wheel circumference (distance per rotation)
    float wheelCircumference = pi * wheelDiameter;

    // Calculate velocity in meters per second (m/s)
    velocity = wheelCircumference / timeInSeconds;
  }
  Serial.print("Velocity: ");
  Serial.println(velocity);
}

// Interrupt function for Hall effect detection
void hallEffectDetected() {
  lastPulseTime = currentPulseTime;
  currentPulseTime = millis();
  pulseDetected = true;
}
