%% PIV Analysis: Bubble/Droplet Breakup in HIT
% Description: Processing 2D-PIV data for oil-in-water emulsions.
% Facility: TUWien-HIT Experimental Facility
% Author: Hesam Pero

clear; close all; clc;

%% 1. Configuration
dataDirectory = 'E:\2D-PIV\TIF\2ms_0.625khz_loop\skip6\out_PaIRS'; 
fileList      = dir(fullfile(dataDirectory, 'out_*.mat'));

% Physical Conversion Factors (Calibration)
magnification = 16.27 * 1000;       % [pixels/m]
samplingFreq  = 625 / 6;            % [Hz] Effective frequency after frame skipping
cf = samplingFreq / magnification;  % Velocity conversion factor (pixel/frame to m/s)

%% 2. Data Loading & Convergence Tracking
numFiles = length(fileList);
fprintf('Processing %d files...\n', numFiles);

for i = 1:numFiles
    filePath = fullfile(dataDirectory, fileList(i).name);
    loadedData = load(filePath);
    
    % Convert velocities to [m/s]
    U(:,:,i) = loadedData.U .* cf; 
    V(:,:,i) = loadedData.V .* cf; 
    
    % Track convergence of isotropic RMS velocity
    u_conv(i) = sqrt((2*rms(U(:,:,i),'all')^2 + rms(V(:,:,i),'all')^2)/3);
end

% Scale spatial coordinates to [mm]
x = loadedData.X / (magnification / 1000); 
y = loadedData.Y / (magnification / 1000);

%% 3. Reynolds Decomposition & Statistics
U_mean  = mean(U, 3);
V_mean  = mean(V, 3);
U_prime = U - U_mean;
V_prime = V - V_mean;

rms_U = rms(U_prime, 3);
rms_V = rms(V_prime, 3);

save('processed_turbulence_results.mat', 'U_mean', 'V_mean', 'rms_U', 'rms_V', 'x', 'y');

%% 4. Structure Functions (D_LL & D_NN)
nRows = size(U, 1);
D_LL  = zeros(nRows - 1, 1);
D_NN  = zeros(nRows - 1, 1);

for i = 1:(nRows - 1)
    % Longitudinal difference (V-direction)
    delta_V = V(i+1, :, :) - V(1, :, :);
    D_LL(i) = mean(delta_V.^2, 'all'); 
    
    % Transverse difference (U-direction)
    delta_U = U(i+1, :, :) - U(1, :, :);
    D_NN(i) = mean(delta_U.^2, 'all');
end

% Radial distance vector [mm]
r_dist = 0.54237 * (1:length(D_LL));

%% 5. Energy Dissipation Rate (epsilon)
C2 = 2.13; % Kolmogorov constant
r_m = r_dist ./ 1000; % mm to m
epsilon_LL = (D_LL' ./ C2).^(1.5) ./ r_m;

%% 6. Visualization
figure('Name', 'HIT Statistics');
subplot(1,2,1);
imagesc(x(1,:), y(:,1), V_mean);
title('Mean Velocity V [m/s]'); xlabel('X [mm]'); ylabel('Y [mm]');
colorbar; axis equal;

subplot(1,2,2);
loglog(r_dist, D_LL, 'r-o', r_dist, D_NN, 'g-s');
grid on; title('Structure Functions');
xlabel('r [mm]'); ylabel('D_{ij} [m^2/s^2]');
legend('D_{LL}', 'D_{NN}');
