# ES3H3-Recognising-Hand-Gestures

*A MATLAB app that identifies Diving Hand Gestures using a Convolutional Neural Network*

## About the Project

The task given was to indentify hand gestures for a given use-case. 
We decided to develop an app that will be used to identify diving hand features, which could be used to teach new divers hand signals.

We experimented with different image pre-processing techniques including colour filtering and edge detection.
Each of these pre-processed set of images was used to retrained the GoogleNet CNN for our given application with around 4,000 training images.
More images would have been used, which would increase the reliability and accuracy of the system, but time constraints stopped us.


## Usage

You will require MATLAB 2020b or higher (not tested on older versions), as well as the following toolboxes:
 - Deep Learning Toolbox
 - Signal Processing Toolbox