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
  ![specturm](https://github.com/KyleLEI/ECE209AS_IoT/blob/master/pictures/Google%20Shape%3B109%3Bp20.png)

### Prior work on machine learning classifier
* Support Vector Machines (SVM)
  * A support vector machine (SVM) is a supervised machine learning model that uses classification algorithms for two-group classification problems. After giving an SVM model sets of labeled training data for either of two categories, they’re able to categorize new examples.
* Principal component analysis(PCA)
  * Principal component analysis (PCA) is a statistical procedure that uses an orthogonal transformation to convert a set of observations of possibly correlated variables into a set of values of linearly uncorrelated variables called principal components. 
![SVM](https://github.com/KyleLEI/ECE209AS_IoT/blob/master/pictures/svm.png)
## Proposed method 

### Overall process (JZ)

### Spectrum analyzer measurement (JZ) 

### Machine learning model (LZ)
#### Input data
The spectrum analyzer outputs data in the format of **(frequency,amplitude)** for each sweep. The number of frequencies available depends on the start, stop frequency, as well as the step size we select. These measurements are also ideal features for classification, in that they are mutually-exclusive and has already been transferred to the frequency domain. 

Although there are some obvious challenges we have to deal with when processing said data. We observe the data has the following properties:
 - High dimensional
 - Small number of data points

#### Classifier
The high dimensional aspect hints at a deep learning model being implemented, but the small number of samples will render deep learning ineffective. So we chose to go with a more traditional machine-learning approach. Namely first reducing the data dimension via methods such as **PCA**. Then we feed the processed data to a classifier that works well with a small dataset, a **support vector machine(SVM)**.

To further combat the dataset size problem, we decide to implement **3-fold cross validation**. This enables us to examine whether the spectrum data can be correctly classified according to the control loop it corresponds to.

As for the classification output, we have already labeled each spectrum with the **ID of the loop** the underlying processor is running. For example, 1 means the processor is running a `print` function and a floating point addition, while 2 means a floating point addition without the `print` function.

#### Metrics
The testing accuracy is obviously a key metric in our implementation. Specifically, if, given the training data, the classifier is able to distinguish between different loops in the testing set with high accuracy, we have succeeded. But to understand what caused the inaccuracies, we can also use a **confusion matrix**. If the numbers on its diagonal are large, with others close to 0, it means the classifier classified the input into the correct catagories with few mis-classifications.

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

