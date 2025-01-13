# Read Image and Display RGB Components

This MATLAB script reads an image and displays its RGB components in separate subplots.

## Overview

- Reads an image file named `image.jpg`.
- Displays the original image and its red, green, and blue components.
- Shows the pixel value at position (1,3).

## Instructions

1. Place `image.jpg` in the same directory as the script.
2. Run the script in MATLAB.

## Details

- `clc`, `clear all`, `close all`: Clears the command window, workspace, and closes all figures.
- `imread`: Reads the image into `Ic`.
- `figure`, `subplot`, `imshow`: Creates a figure with subplots and displays images.
- Extracts RGB components by zeroing other channels.
- Displays the pixel value at (1,3) in the command window.

**RGB Splitting Output:**

![](https://github.com/user-attachments/assets/3ede3b05-e08e-4005-b696-15aa3659cafd)

**Greyscale Algorithms:** Implements and displays the following greyscale methods:

- Average Method :

  ![](https://github.com/user-attachments/assets/877017b9-46f1-4c5f-ba78-a7e90396a7d9)

- Weighted Average Method :

  ![](https://github.com/user-attachments/assets/23513d5f-1234-4683-94ea-d3fa953e75c6)

- Luminosity Method :

  ![](https://github.com/user-attachments/assets/a7a2d198-60b8-404f-92c7-4dbb29551dbb)

- Desaturation Method :

  ![](https://github.com/user-attachments/assets/da813fe2-d44f-4c9e-847b-c3dfaa4148f9)

![](https://github.com/user-attachments/assets/9889e960-80e3-4149-81ea-7eaa8e68b6fa)

## Author

Sai Chandra Mouli(BT22ECI035)
