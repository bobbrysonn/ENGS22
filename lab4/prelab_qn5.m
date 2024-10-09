%% Prelab 4: Simulate Vout(t)
% Oct 8th, 2024
% Bob Moriasi

% Given Values
R1 = 100;   % Ohms
R2 = 100;   % Ohms
C = 1e-6;   % Farads
L = 10e-3;  % Henrys
Vx = 1;     % Step input voltage (Volts)

% Time span
t = linspace(0, 5*max(R1*C, L/R2), 1000); 

% RC Circuit (Vout = Vx (1 - exp(-t/RC)))
tau_RC = R1 * C;
Vout_RC = Vx * (1 - exp(-t/tau_RC));

% LR Circuit (Vout = Vx (1 - exp(-t/(L/R))))
tau_LR = L / R2;
Vout_LR = Vx * (1 - exp(-t/tau_LR));

% Plotting results
figure;
subplot(2,1,1);
plot(t, Vout_RC, 'b', 'LineWidth', 1.5);
title('RC Circuit Step Response');
xlabel('Time (seconds)');
ylabel('V_{out} (volts)');
grid on;

subplot(2,1,2);
plot(t, Vout_LR, 'r', 'LineWidth', 1.5);
title('LR Circuit Step Response');
xlabel('Time (seconds)');
ylabel('V_{out} (volts)');
grid on;
