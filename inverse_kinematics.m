function [theta1, theta2] = inverse_kinematics(x, y, L1, L2)
    % inverse_kinematics: Calculates the joint angles (theta1, theta2)
    % for a desired end-effector position (x, y).
    % This function uses the "elbow up" solution.
    %
    % Inputs:
    %   x      - Desired X-coordinate
    %   y      - Desired Y-coordinate
    %   L1     - Length of the first link
    %   L2     - Length of the second link
    %
    % Outputs:
    %   theta1 - Required angle of the first link (in radians)
    %   theta2 - Required angle of the second link (in radians)

    % Ensure inputs are treated as floating-point numbers
    x = double(x);
    y = double(y);
    L1 = double(L1);
    L2 = double(L2);

    % Calculate theta2
    % D = (x^2 + y^2 - L1^2 - L2^2) / (2*L1*L2)
    D_num = (x^2 + y^2 - L1^2 - L2^2);
    D_den = (2 * L1 * L2);
    
    % Check for reachability
    if abs(D_num / D_den) > 1
        warning('Position is out of reachable workspace');
        % Return current position (or error)
        % For simplicity, we'll saturate at the boundary
        D = sign(D_num / D_den);
    else
        D = D_num / D_den;
    end

    % Elbow-up solution: atan2(-sqrt(1 - D^2), D)
    % Elbow-down solution: atan2(sqrt(1 - D^2), D)
    % We will use the elbow-up solution as it's more common.
    theta2 = atan2(-sqrt(1 - D^2), D);

    % Calculate theta1
    % k1 = L1 + L2*cos(theta2)
    % k2 = L2*sin(theta2)
    % theta1 = atan2(y, x) - atan2(k2, k1)
    k1 = L1 + L2 * cos(theta2);
    k2 = L2 * sin(theta2);
    theta1 = atan2(y, x) - atan2(k2, k1);

end
