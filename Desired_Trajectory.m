function [x_d, y_d] = desired_trajectory(t)
    % desired_trajectory: Generates a desired (x, y) position based on time.
    % This example traces a circle.
    %
    % Input:
    %   t - Current simulation time
    %
    % Outputs:
    %   x_d - Desired X-coordinate at time t
    %   y_d - Desired Y-coordinate at time t

    % Define the circle's properties
    center_x = 0.5; % X-coordinate of the circle's center
    center_y = 0.3; % Y-coordinate of the circle's center
    radius = 0.2;   % Radius of the circle
    speed = 0.5;    % Speed of tracing (radians per second)

    % Calculate the desired (x, y) position on the circle
    x_d = center_x + radius * cos(speed * t);
    y_d = center_y + radius * sin(speed * t);

end
