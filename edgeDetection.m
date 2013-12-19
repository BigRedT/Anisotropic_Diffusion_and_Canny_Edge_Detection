clear all
close all
clc
% Read the RGB image and convert to Grayscale
img=rgb2gray(imread('Pantheon.png'));
% Perform Anisotropic Diffusion to smoothen the image such that 
% unnecessary details are suppressed and the edges are preserved 
diffusedImg=uint8(anisodiff2D(img,30,1/5,30,1));
% Display the images
subplot(1,2,1),imshow(img);
subplot(1,2,2),imshow(diffusedImg);
% Perform Canny edge detection on diffused image
edges=edge(diffusedImg,'canny',0.1);
% Display the edge map
figure, imshow(edges);