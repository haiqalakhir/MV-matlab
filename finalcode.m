close all; clear all; clc;

highlighter = imread('pencolor2.jpg');
I = rgb2hsv(highlighter); % Convert RGB image to chosen color space
% DARK BLUE
channel1Min = 0.581; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.758; 

channel2Min = 0.378; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 0.631;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;
figure,imshow(BW);

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
figure,imshow(maskedRGBImage);

darkblue1=rgb2gray(maskedRGBImage);
figure,imshow(darkblue1);
darkblue2=imbinarize(darkblue1);
figure,imshow(darkblue2);
darkblue3 = bwareaopen(darkblue2, 10000);
figure,imshow(darkblue3);

[label, numdarkblue] = bwlabel(darkblue3);
fprintf('number of dark blue pen = %1.0f\n', numdarkblue)

%GREEN
channel1Min = 0.343; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.422; 

channel2Min = 0.000; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 1.000;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
figure,imshow(maskedRGBImage);

green1=rgb2gray(maskedRGBImage);
green2=imbinarize(green1);
green3 = bwareaopen(green2, 10000);

[label, numgreen] = bwlabel(green3);
fprintf('number of green pen = %1.0f\n', numgreen)
% LIGHTBLUE
channel1Min = 0.534; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.584; 

channel2Min = 0.000; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 1.000;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
figure,imshow(maskedRGBImage);

lightblue1=rgb2gray(maskedRGBImage);
lightblue2=imbinarize(lightblue1);
lightblue3 = bwareaopen(lightblue2, 10000);

[label, numlightblue] = bwlabel(lightblue3);
fprintf('number of light blue pen = %1.0f\n', numlightblue)
% ORANGE
channel1Min = 0.946; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.030; 

channel2Min = 0.000; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 1.000;

sliderBW = ( (I(:,:,1) >= channel1Min) | (I(:,:,1) <= channel1Max) ) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
figure,imshow(maskedRGBImage);

orange1=rgb2gray(maskedRGBImage);
orange2=imbinarize(orange1);
orange3 = bwareaopen(orange2, 20000);

[label, numorange] = bwlabel(orange3);
fprintf('number of orange pen = %1.0f\n', numorange)

% PINK
channel1Min = 0.831; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.891;

channel2Min = 0.000; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 1.000;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
figure,imshow(maskedRGBImage);

pink1=rgb2gray(maskedRGBImage);
pink2=imbinarize(pink1);
pink3 = bwareaopen(pink2, 10000);

[label, numpink] = bwlabel(pink3);
fprintf('number of pink pen = %1.0f\n', numpink)

% YELLOW
channel1Min = 0.148; % Define thresholds for channel 1 based on histogram settings
channel1Max = 0.213;

channel2Min = 0.000; % Define thresholds for channel 2 based on histogram settings
channel2Max = 1.000;

channel3Min = 0.000; % Define thresholds for channel 3 based on histogram settings
channel3Max = 1.000;

sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ... % Create mask based on chosen histogram thresholds
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

maskedRGBImage = highlighter; % Initialize output masked image based on input image.

maskedRGBImage(repmat(~BW,[1 1 3])) = 0; % Set background pixels where BW is false to zero.
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
