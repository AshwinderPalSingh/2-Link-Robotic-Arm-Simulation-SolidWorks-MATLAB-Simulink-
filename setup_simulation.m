
%
% This script initializes all necessary parameters for the
% Two_link_ROBOTIC_ARM_ASSEMBLY.slx Simulink model.
% Run this script *before* running the simulation.

clc;
clear;
close all;

disp('Setting up simulation parameters for 2-Link Robotic Arm...');

% 1. Robot Physical Parameters
% These values should match your SolidWorks model.
% (Assuming lengths are in meters)
L1 = 0.5; % Length of the first link
L2 = 0.4; % Length of the second link

% 2. Simulation Parameters
t_sim = 20; % Total simulation time (in seconds)

% 3. PID Controller Gains
% These gains will need to be tuned for your specific model.
% --- Gains for Joint 1 (theta1) ---
Kp1 = 100;
Ki1 = 20;
Kd1 = 10;
% --- Gains for Joint 2 (theta2) ---
Kp2 = 50;
Ki2 = 10;
Kd2 = 5;

% 4. Load the Simulink Model
% The 'smimport' command generates the .slx file
% model_name = 'Two_link_ROBOTIC_ARM_ASSEMBLY';
% 
% % Check if the model is already open
% if ~bdIsLoaded(model_name)
%     disp(['Loading model: ' model_name]);
%     load_system(model_name);
% else
%     disp(['Model ' model_name ' is already loaded.']);
% end
% 
% % Run the simulation
% disp('Running simulation...');
% sim(model_name);
% 
% disp('Simulation complete.');

disp('Parameters set. You can now run the Simulink model.');
disp('NOTE: Simulation running is commented out. Open the .slx file and press "Run".');
