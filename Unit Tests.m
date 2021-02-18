%%% ========= Unit Testing ========= 
% This file is a testing script for the data gathering and preprocessing
% functions developed for the hand gesture detection task.

% Note: Please change the variables containing paths for your system.

%% ------- Data Gathering -------
% Initialising variables
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing' ;
numberOfPictures = 400 ;

%% Data Gathering - Test 1
% Tests if function works as it should
% Expected Output: Video saved

imageCapture(webcam, imgSize, path, numberOfPictures)
assert(isfile(join([path '/UnprocessedVideo.avi'])))

%% Data Gathering - Test 2
% Tests when fewer input parameters are placed
% Expected Output: Should display a warning

imageCapture(webcam, imgSize, path)
assert(isequal(lastwarn, 'Not enough input parameters'))

%% ------- Apply Black White Processing -------

%% Black White Processing - Test 1
% Tests using light background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\DG-Test1' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test1\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test1' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\DG-Test1\BWImgs' ;
imgSize = [224, 224] ;
noOfImages = 400 ;
applyBW(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with light background')
% Test Passed by inspection - Hand was detected in all pictures and BW video displays hand as
% white

%% Black White Processing - Test 2
% Tests using images with dark background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\DG-Test2' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test2\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test2' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\DG-Test2\BWImgs' ;
imgSize = [224, 224] ;
noOfImages = 400 ;
applyBW(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with dark background')
% Test Passed by insepection - Hand was detected in most pictures and BW
% video displays hand as black

%% Black White Processing - Test 3
% Tests using images with complex background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\DG-Test3' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test3\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\DG-Test3' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\DG-Test3\BWImgs' ;
imgSize = [224, 224] ;
noOfImages = 400 ;
applyBW(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with complex background')
% Test failed by inspection - hand was detected along with other features
% of the room.

%% ------- Apply Edge Detection -------

%% Edge Detection - Test 1
% Tests using images with light background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\ED-Test1' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform Test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test1\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test1' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\ED-Test1\EDImgs' ;
imgSize = [244, 244] ;
noOfImages = 400 ;
applyED(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with light background')
% Test Passed - Detected hand very well

%% Edge Detection - Test 2
% Tests using images with dark background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\ED-Test2' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform Test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test2\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test2' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\ED-Test2\EDImgs' ;
imgSize = [244, 244] ;
noOfImages = 400 ;
applyED(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with dark background')
% Test Passed - Detected hand very well

%% Edge Detection - Test 3
% Tests using images with compelx background
% Expected Output: 400 images detected with over 50% displaying a hand
% (test by inspection)

% Create Dataset
webcam = webcam(2) ;
imgSize = [224, 224] ;
path = 'C:\Users\yasse\Desktop\Testing\ED-Test3' ;
numberOfPictures = 400 ;
imageCapture(webcam, imgSize, path, numberOfPictures)

% Perform Test
pathToUnprocessedVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test3\UnprocessedVideo.avi' ;
pathToSaveVideo = 'C:\Users\yasse\Desktop\Testing\ED-Test3' ;
pathToSaveImages = 'C:\Users\yasse\Desktop\Testing\ED-Test3\EDImgs' ;
imgSize = [244, 244] ;
noOfImages = 400 ;
applyED(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)

assert(isequal(size(dir([pathToSaveImages '/*.png']), 1), 400), 'Test Failed with complex background')
% Test failed - Hand was detected along with features of the background
