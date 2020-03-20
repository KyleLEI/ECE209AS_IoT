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
<div align=center<imgwidth="250"height="250"src="https://github.com/KyleLEI/ECE209AS_IoT/blob/master/pictures/Google%20Shape%3B109%3Bp20.png"/></div>
      
* Classifier: Support Vector Machine
  * Small dataset -> 3-fold cross validation
  * Prevent overfitting -> dimensionality reduction
  * Different kernel: linear & radial basis function
![classifier](https://github.com/KyleLEI/ECE209AS_IoT/blob/master/pictures/Google%20Shape%3B110%3Bp20.png)
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

