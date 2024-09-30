%% ENGS 22; Pset 1
% Plot velocity against time of a canoe
% Sep 22nd, 2024
% Bob B Moriasi

%% Read data from the csv
data = readtable('CanoeCoast_Down2.csv');
decel = data(73:end, :);
time = decel{:, "Run1_Time_s_"};
velocity = decel{:, "Run1_FlowRate_m_s_"};

%% Plot the data
figure;
plot(time, velocity);
title('Velocity vs Time');
xlim([36 176])
xlabel('Time (s)');
ylabel('Velocity (m/s)');
grid on;