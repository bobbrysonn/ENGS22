%% ENGS 22; Lab 1 - Intro Lab
% Sep 17th, 2024
% Bob B Moriasi

%% Task 2: Import experimental data and plot w/ characterization equation

% Import data from the text file
data = readtable('FluidTubeResonanceData.txt');
t2 = data.t;        % Time in seconds (s)
x2 = data.x;        % Position in meters (m)

% Plot the imported data as a dashed blue line on the previous plot
hold on
plot(t2, x2, 'b--', 'DisplayName', 'Imported Data Set')

% Use curve fitting tool to get coefficients for the equation
C1 = fit(t2, x2, 'a*exp(-b*x).*sin(c*x+pi/2)', 'StartPoint', [1, 1, 1]);

% Extract coefficients from the fit
A2 = C1.a;          % Amplitude coefficient
wd2 = C1.c;         % Damped natural frequency (rad/s)
tau2 = 1 / C1.b;    % Time constant (s)

% Calculate the fitted curve using the obtained coefficients
curve1 = A2 * exp(-t2 / tau2) .* sin(wd2 * t2 + pi/2);

% Plot the fitted curve as a magenta line
hold on
plot(t2, curve1, 'm-', 'DisplayName', 'Matlab Curve Fit')

% Add labels, title, and legend to the plot
xlabel('Time (s)') % X-axis label
ylabel('Position (m)') % Y-axis label
title('Experimental Data and Characterization Equation') % Plot title
legend('show') % Display legend

% Hold off to stop adding to the current plot
hold off
