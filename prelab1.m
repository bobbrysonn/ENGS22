%% ENGS 22; Lab 1 - Matlab Prelab
% Calculate and plot a decaying sinusoid
% Sep 17th, 2024
% Bob B Moriasi

close all
clear
clc

%% Setup Constants
% create a time array that is 1000 points from 0 to 8
time = linspace(0, 8, 1000);

% constants for equation
T=1;        % time constant (s)
wd=4;       % damped natural frequency (rads/s)
A=1;        % amplitude (unites not specified)
P=pi/2;     % phase shift (radians)

%% Calculate & Plot
% calculate equation, using the array 'time ' as the independent variable
eqn = A * exp(-time / T) .* sin(wd * time + P);
plot(time, eqn);

% add info to your plot 
title("Engs 22 Prelab 1: Matlab, by B.M");
xlabel("time");
ylabel("response equation");