function applyBW(pathToUnprocessedVideo, pathToSaveVideo, pathToSaveImages, imgSize, noOfImages)
% Apply black and white processing to unprocessed video and save video and
% images
% Inputs:
%   - pathToUnprocessedVideo : Path to the unprocessed video file
%   - pathToSaveVideo : Path to the location to store the video
%   - pathToSaveImages : Path to the directory to store the images
%   - imgSize : 2x1 array of imgSize, should be [224, 224]
 
vid = VideoReader(pathToUnprocessedVideo);
vw = VideoWriter(join([pathToSaveVideo '\BWVideo.avi']));
vw.open();

for i = 1:noOfImages
    
    % Pre-processing techniques
    frame = readFrame(vid);% Read next frame in 'vid' - assign to corresponding value in oksign.
    imgray = rgb2gray(frame);
    imgsize = imresize(imgray, imgSize);
    imgbw = imcomplement(imbinarize(imgsize));
    imgbw2 = imfill(imgbw,'holes');
    imgbw3 = bwareaopen(imgbw2, 5000);
    imgbw4 = im2uint8(imgbw3);
    imshow(imgbw4);
    
    name = sprintf('Image_%d.png',i);% Create a string corresponding to the image number
    filename = fullfile(pathToSaveImages, name);% Creates variable of file path location (including name of the image).
    imwrite(imgbw4,filename); % Write image data to the file specified by filename (with the image name).
    
    vw.writeVideo(imgbw4);
    
    title(i);
    pause(0.01);
end

vw.close(); 

end