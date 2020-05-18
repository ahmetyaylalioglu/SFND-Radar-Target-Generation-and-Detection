clear;
clc;

c = 3*10^8;
f = 77e9;
theta = 45;
wavelength = c/f;
d = wavelength/2;
%thetaSin = (phase*wavelength)/(360*d);
phase = 360 * d * sin(15)/wavelength;
disp(phase);