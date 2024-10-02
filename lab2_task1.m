%% ENGS 22; Lab 2 - Scope Lab
% Sep 17th, 2024
% Bob B Moriasi

%% Import data
data = readtable("default.csv", "NumHeaderLines", 1);

% Move data from table format to individual variables with dersired names
time = data.Var1;
In = data.Var2;
Out = data.Var3;

%% Plot the data
figure(1)
plot(time, In, 'b', time, Out, 'r-')

% Format plot with labels
grid minor
xlabel('time (s)')
ylabel('voltage (V)')
title('Scope Plot: Input and Output')

%% Plot the equation
hold on

eqn = 0.2687 * sin(31415.93*time - 0.965);
plot(time, eqn)
legend('Input, Ch1', 'Output, Ch2', "My Equation")

hold off

