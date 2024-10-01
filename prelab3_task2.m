%% ENGS 22; Lab 3 - Prelab
% Sep 17th, 2024
% Bob B Moriasi

%% Euler's method
function euler_method()
    % Initial Values
    x0 = 0; 
    y0 = 1;
    h = 5;
    x_end = 100; % Time range up to 100 seconds

    % Create arrays to store time and y values
    time_values = x0:h:x_end; % Time from 0 to 100 with step size of 5
    y_values = zeros(size(time_values)); % Initialize array for y values
    y_values(1) = y0; % Set the initial value of y

    % Call the Euler function
    for i = 2:length(time_values)
        y_values(i) = euler(time_values(i-1), y_values(i-1), h);
    end

    % Plotting the result
    hold on 

    plot(time_values, y_values, '-o');
    xlabel('Time (seconds)');
    ylabel('x(t)');
    title('Euler Method: Value of y over time vs Analytical Solution');

    % Plotting the analytical solution
    analytical = 5 - 4 * exp(-0.1 * time_values);
    plot(time_values, analytical)

    hold off
end

%% Function for the given differential equation
function result = func(x, y)
    result = -0.1 * y + 0.5;
end

%% Function implementing Euler's Method for one step
function y_next = euler(x, y, h)
    % Calculate the next y value using Euler's method
    y_next = y + h * func(x, y);
end
