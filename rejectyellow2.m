close all; clear all; clc;

highlighter = imread('pencolor1.jpg');
% Convert RGB image to chosen color space
I = rgb2hsv(highlighter);

% DARK BLUE
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.581;
channel1Max = 0.758;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.378;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 0.631;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

darkblue1=rgb2gray(maskedRGBImage);
darkblue2=imbinarize(darkblue1);

darkblue3 = bwareaopen(darkblue2, 10000);

[label, numdarkblue] = bwlabel(darkblue3);
fprintf('number of dark blue pen = %1.0f\n', numdarkblue)


%GREEN
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.343;
channel1Max = 0.422;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

green1=rgb2gray(maskedRGBImage);
green2=imbinarize(green1);

green3 = bwareaopen(green2, 10000);

[label, numgreen] = bwlabel(green3);
fprintf('number of green pen = %1.0f\n', numgreen)


% LIGHTBLUE
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.534;
channel1Max = 0.584;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

lightblue1=rgb2gray(maskedRGBImage);
lightblue2=imbinarize(lightblue1);

lightblue3 = bwareaopen(lightblue2, 10000);

[label, numlightblue] = bwlabel(lightblue3);
fprintf('number of light blue pen = %1.0f\n', numlightblue)


% ORANGE
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.946;
channel1Max = 0.030;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
sliderBW = ( (I(:,:,1) >= channel1Min) | (I(:,:,1) <= channel1Max) ) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

orange1=rgb2gray(maskedRGBImage);
orange2=imbinarize(orange1);

orange3 = bwareaopen(orange2, 20000);

[label, numorange] = bwlabel(orange3);
fprintf('number of orange pen = %1.0f\n', numorange)


% PINK
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.831;
channel1Max = 0.891;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

pink1=rgb2gray(maskedRGBImage);
pink2=imbinarize(pink1);

pink3 = bwareaopen(pink2, 10000);

[label, numpink] = bwlabel(pink3);
fprintf('number of pink pen = %1.0f\n', numpink)


% YELLOW
% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.148;
channel1Max = 0.213;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 1.000;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 1.000;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = highlighter;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;
figure,imshow(maskedRGBImage);

yellow1=rgb2gray(maskedRGBImage);
yellow2=imbinarize(yellow1);

yellow3 = bwareaopen(yellow2, 10000);

[label, numyellow] = bwlabel(yellow3);
fprintf('number of yellow pen = %1.0f\n\n', numyellow)

if numdarkblue==1 & numgreen==1 & numlightblue==1 & numorange==1 & numpink==1 & numyellow==1
    fprintf('pass\n');
else
    fprintf('reject');
end
