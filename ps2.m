%% ENGS 22; Pset 2
% Plot velocity against time of a canoe as well as fit
% Sep 29nd, 2024
% Bob B Moriasi

%% Read data from the csv
data = readtable('CanoeCoast_Down2.csv');
decel = data(73:end, :);
time = decel{:, "Run1_Time_s_"};
velocity = decel{:, "Run1_FlowRate_m_s_"};

%% The fit
fitY = 6.8996 * exp(-0.0493 * time);

%% Plot the data
figure;
plot(time, velocity);

hold on
% Overlay the fit
plot(time, fitY);
title('Velocity vs Time');
xlim([36 176])
xlabel('Time (s)');
ylabel('Velocity (m/s)');
grid on;

hold off