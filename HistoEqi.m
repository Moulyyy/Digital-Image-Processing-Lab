
clc;
clear all;
close all;

% Load image
img = imread('imgg.jpg');
gray_img = im2gray(img); % Convert to grayscale
[m, n] = size(gray_img); % Get image dimensions

% Flatten the image array
img_array = double(gray_img(:)); 

% Compute counts (histogram)
[unique_vals, ~, idx] = unique(img_array); % Get unique pixel values
counts = accumarray(idx, 1); % Count occurrences
val_count_table = [unique_vals, counts]; % Value-Count table

% Compute cumulative distribution function (CDF)
cdf = cumsum(counts);
cdf_min = min(cdf); % Minimum CDF value

% Histogram equalization formula
L = 256; % Total intensity levels (8-bit image)
h_v = round(((cdf - cdf_min) / ((m * n) - cdf_min)) * (L - 1)); 

% Map old pixel values to new equalized values
equalized_img = h_v(idx); 
equalized_img = reshape(equalized_img, [m, n]); % Reshape to original image size

% Plot original and equalized images
figure;

% Subplot 1: Original and Equalized Image
subplot(2, 1, 1);
imshowpair(gray_img, uint8(equalized_img), 'montage');
title('Original Image (Left) and Equalized Image (Right)');

% Subplot 2: Original and Equalized Histograms
subplot(2, 1, 2);
histogram(gray_img(:), 256, 'EdgeColor', 'none', 'FaceColor', 'blue', 'Normalization', 'probability'); % Original histogram
hold on;
histogram(equalized_img(:), 256, 'EdgeColor', 'none', 'FaceColor', 'red', 'Normalization', 'probability'); % Equalized histogram
title('Original Histogram (Blue) vs Equalized Histogram (Red)');
legend('Original', 'Equalized');