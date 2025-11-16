function [x, y] = forward_kinematics(theta1, theta2, L1, L2)
    % forward_kinematics: Calculates the (x, y) position of the end-effector
    % given the joint angles and link lengths.
    %
    % Inputs:
    %   theta1 - Angle of the first link (in radians)
    %   theta2 - Angle of the second link (in radians)
    %   L1     - Length of the first link
    %   L2     - Length of the second link
    %
    % Outputs:
    %   x      - X-coordinate of the end-effector
    %   y      - Y-coordinate of the end-effector

    % Ensure inputs are treated as floating-point numbers
    theta1 = double(theta1);
    theta2 = double(theta2);
    L1 = double(L1);
    L2 = double(L2);

    % Forward Kinematics equations
    x = L1 * cos(theta1) + L2 * cos(theta1 + theta2);
    y = L1 * sin(theta1) + L2 * sin(theta1 + theta2);

end
