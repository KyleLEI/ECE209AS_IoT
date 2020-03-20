# ECE209AS_IoT
Side-channel attack using electromagnetic emanation from IoT device 
## Team Members
* Jiawei Zhang
* Zhao Lei
* Zeyu Wang

## Links
### Project Repositories
[Github](https://github.com/KyleLEI/ECE209AS_IoT "Check All Codes")
### Final Presentation Video
[Youtube](https://www.youtube.com/watch?v=0kZYEDo6shQ "Jump to Youtube")

------------------------------

## Introduction and motivation (JZ)

## Background knowledge  
### Prior work on Side-Channel attack
* EM wave will be generated because of the processor’s switching activity.
  * Processor with higher power consumption is easier to measure
  * Processor with a metal shield is almost impossible to probe
* Looping of a program will cause periodic EM wave generation.
  * Many operations will include looping of some basic function modules
* System’s optimization and interrupts will cause some volatility in the measurement result.
  * So we created machine learning models to build more robust algorithm based on the training data.
* Measurement technique is based on real-world experiments
  * Setting of spectrum analyzer determines the accuracy of dataset.
  * Placement of the probe matters.
  * Consistency in setup is important, but contrary situation can help us as well.

### Prior work on machine learning classifier
* Spectrum analyzer output
  * Format: (frequency, amplitude)
  * High dimensional
  * Small number of data points
![Spectrum](/pictures/Google Shape;109;p20.png) 
* Classifier: Support Vector Machine
  * Small dataset -> 3-fold cross validation
  * Prevent overfitting -> dimensionality reduction
  * Different kernel: linear & radial basis function
* Key metric: testing accuracy 


## Proposed method 

### Overall process (JZ)

### Spectrum analyzer measurement (JZ) 

### Machine learning model (LZ)

### Result  (LZ)

## Conclusion  (LZ)

---------------------------------------------
## Experimental result  
#### Motivation
Side-channel attacks are widely explored in the recent decades, such as power analysis and time measurement. Many investigations on electromagnetic leakage are also conducted, such as potential for attack, program profiling.  
For ECE209AS course project, we reproduced the previous paper's result, and further extend scope of experiments to three different platforms. Not only analyzing the effectiveness on different platform, we are build additional machine learning model to better predict the result algorithm running and our project also handles the interrupt event as well.

#### Overall Project Goals
* Measure and process the electromagnetic leakage information from different IoT processors.
* Leverage electromagnetic emanation information to deduce the algorithm currently running.
* Build and compare machine learning algorithm to classify process being runned.
* Expand this analyzing method to multiple platform and compare the result from different processors.


#### Specific Aims
* Being able to take measurement and process spectrum information on IoT platform.
* Build execution paths with interrupts, different mathematical processes and controlled loops.
* Deduct the execution path chosen by analyzing electromagnetic information.
* Build and compare different machine learning models to perform the deduction automatically.
* Extending this method to three platforms - Raspberry Pi, STM32, and Arduino.


## Hardware Used in This Porject
* Arduino Uno
* Raspberry Pi 3B+
* STM32 H7 nucleo board
* Spectrum analyzer

## Technical Approach 
### EM Side-channel
* EM wave will be generated because of the processor’s switching activity.
  * Processor with higher power consumption is easier to measure
  * Processor with a metal shield is almost impossible to probe
* Looping of a program will cause periodic EM wave generation.
  * Many operations will include looping of some basic function modules
* System’s optimization and interrupts will cause some volatility in the measurement result.
  * So we created machine learning models to build more robust algorithm based on the training data.
* Measurement technique is based on real-world experiments
  * Setting of spectrum analyzer determines the accuracy of dataset.
  * Placement of the probe matters.
  * Consistency in setup is important, but contrary situation can help us as well.


### Machine Learning Classifier
* Spectrum analyzer output
  * Format: (frequency, amplitude)
  * High dimensional
  * Small number of data points
* Classifier: Support Vector Machine
  * Small dataset -> 3-fold cross validation
  * Prevent overfitting -> dimensionality reduction
  * Different kernel: linear & radial basis function
* Key metric: testing accuracy


### 
#### Raspberry Pi GPIO Connection
![GPIO](/Src/GPIO.png)

#### Bluetooth Communication
Default mode of Raspberry Pi onboard bluetooth module is SLAVE ACCEPT, need to change it to MASTER before connect HC-05 on Arduino
```bash
sudo hciconfig hci0 lm master
```
After this, use `Bluetoothctl` tool to scan, pair and trust target HC-05 module.
Then, connect it as software serial port so that we can send commands via Bluetooth channel.
```bash
sudo rfcomm connect hci0 XX:XX:XX:XX:XX:XX
```

#### Run Control Code on Raspberry Pi
```bash
cd IBID/Master_Control
python3 ControlBT.py
```
#### Download Arduino Code to the Following Car
`Slave.ino` in `IBID/Slave_Control/Slave`


## Part 2: Interactions between Cars and Bluetooth Stations: Indoor Positioning System via RSSI
### Process & Algorithm
* Step 1: Use Bluetooth chip to scan the RSSI values
* Step 2: Find out three Bluetooth iBeacons(stations) thru a a Bluetooth addresses filter
* Step 3: Calculate distances between the car and target iBeacons
* Step 4: Calculate car coordinate pair by applying **Heron's formula**
* Step 5: Use this coordinate for indoor navigation

### Indoor Positioning Coordinates
![RSSI](/Src/RSSI.jpg)


### Demo: Move to one Bluetooth Station
[![Demo Video](/Src/Demo2.png)](https://www.youtube.com/watch?v=4V5qMFQUmjc)

### Test Code and Instructions
`pybluez` library is necessary for running RSSI code.
```bash
pip install pybluez
cd IBID/Rssi
python3 testblescan.py
```

## Part 3: Interactions between Human and Cars: Voice Control System
### Design & Process
* Make Raspberry Pi to be a `Linux Server`
* Use `Echo Dot`/`Amazon Alexa App` to fetch voice commands
* Build an `Alexa Skill` to do Nature Language Processing in the Cloud
* Utilize `Alexa API` to send Raspberry Pi processed voice commands package, including to main part [{Device name}, {Operation name}]
* Raspberry Pi then follows command to control the leading car directly, and controls the following cars by Bluetooth command signals
* ![voice](/Src/alexa.png)

### Platform and Tools
* Falsk-Ask: Python library to utilize Alexa API on Raspberry Pi.
* Ngrok: Reversed Proxy tool to expose Raspberry Pi server to the public Internet.
* Amazon Developer Console: Design customized Alexa Skill to realize voice control.

### Demo
[![Demo Video](/Src/Demo3.png)](https://www.youtube.com/watch?v=NX05F57GPa4)


## Final Stage: Combine 3 Parts Together
At last, we combine all three parts above together to make our final demo. In this demo, we use voice to activate the leading car(Master). When leading car moves, it trigers the following algorithm, which guide the following car(Slave) to follow behind but keep a safe distance basing on the information acquired by both the RSSI system and the sensor system.

### Demo
[![Demo Video](/Src/Demo4.png)](https://www.youtube.com/watch?v=pV74apRyUJk)

## Summary
In all, we successfully built a vehicle interaction system(simulation) this quarter including an indoor positioning system, sensor information sharing platform and voice control system. Human players are able to control all registered vehicles in this system simply by voice. Vehicles inside the system, human-operated or not, are able to communicate with each other to achieve simple collaboration like following or obstacle avoiding.
### Strength
* Multiple Interactions: HCI & CCI
* Accuracy: Combine indoor positioning & sensor information sharing
* Performance: NLP on the Cloud and control operation on the Edge
* Unification: Same protocol on multiple cars, both Arduino & Raspberry Pi
### Weakness
* Voice control does not respond 100% correctly
* Need better algorithms & sensors to handle complex situations
* RSSI values sometime fluctuate, especially when the car is too close to a iBeacon 

## Conclusion
Although we don't have enough funding/support to make a test on real vehicles, we believed that our trial is still meaningful and prospective. The Arduino-Raspberry Pi intelligent car system can be regarded as a simulation of what might happen in the future. Currently, we mainly rely on cheap ultrasonic and IR sensors, but the same idea can be realized on Tesla sedan, which should be equipped with much more precise radars for similar purposes. Now we use Bluetooth iBeacons to build an indoor positioning system. When it goes to the outdoor, we can simply change the source to be GPS satellites while keeping the original positioning algorithm structures. What we did was not playing with toy cars, but a low-cost prototype model for the future way of transportation system.
