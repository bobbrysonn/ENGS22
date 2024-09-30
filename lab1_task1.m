%% ENGS 22; Lab 1 - Intro Lab
% Sep 17th, 2024
% Bob B Moriasi

%% Task 1: Approximate equation of peak points
peakTime = [0.066667, 1.4, 2.835, 4.20167, 5.60333, 6.97, 8.23833]; % Time in seconds (s)
peakHeight = [1.01051, 0.648186, 0.454806, 0.291076, 0.209682, 0.126316, 0.0520871]; % Height in meters (m)

% Plot peak points as red circles
figure;
plot(peakTime, peakHeight, 'ro', 'DisplayName', 'Peak Points');
hold on;

% Calculate the time intervals between consecutive peaks
T = peakTime(2:end) - peakTime(1:(end-1));

% Calculate the damped natural frequency (fd) and angular frequency (wd)
fd = 1 / mean(T) %#ok<NOPTS> % Frequency in Hz
wd = 2 * pi * fd %#ok<NOPTS> % Angular frequency in rad/s

% Calculate the decay rate
% Taking the natural log of the y-axis linearizes an exponential
delta_lnH = log(peakHeight(2:end)) - log(peakHeight(1));
% Delta of the time point relative to the initial time
delta_t = peakTime(2:end) - peakTime(1);        
% Time constant (tau) is the inverse of the slope of the semilogy 
tau = -delta_t ./ delta_lnH;                    % Time constant in seconds (s)
tau1 = mean(tau) %#ok<NOPTS>                    % Average time constant in seconds (s)

% Plot system characterization equation
% Generate a time array from 0 to 10 seconds with 1000 points
time = linspace(0, 10, 1000);

% Calculate the system response using the characterization equation
sys = peakHeight(1) * exp(-time/tau1) .* sin(wd * time + pi/2);

% Plot the system characterization equation as a black line
plot(time, sys, 'k-', 'DisplayName', 'System Characterization');

% Add labels, title, and legend to the plot
xlabel('Height (m)'); % X-axis label
ylabel('Time (s)'); % Y-axis label
title('Peak Points and System Characterization'); % Plot title
legend('show'); % Display legend

% Hold off to stop adding to the current plot
hold off;
