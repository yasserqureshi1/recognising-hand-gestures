function imageCapture(webcam, imgSize, path, numberOfPictures)
% Saves a video that will be used for classification
% Inputs:
%   - webcam : Object of the webcam
%   - imgSize : 2x1 array of imgSize, should be [224, 224]
%   - path : Path to folder location to be saved
%   - numberOfPictures : Number of final images that the video consists of
%   [400]

if nargin ~= 4
    warning('Not enough input parameters')
else
    reference = snapshot(webcam);
    imshow(reference);
    D = size(reference);
    array = zeros(D(1),D(2),D(3),numberOfPictures);
    sizeofarray = size(array);

    noimages = sizeofarray(4);

    set(gcf, 'Visible', 'on')
    vw = VideoWriter(join([path '\UnprocessedVideo.avi']));
    vw.open();

    figure;

    for i = 1:noimages
        image = snapshot(webcam);
        imgsize = imresize(image, imgSize);
        vw.writeVideo(imgsize);
        imshow(imgsize);
        title(i);
        pause(0.01);
    end

    vw.close();

end