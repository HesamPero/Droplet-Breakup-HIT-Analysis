%% Interfacial Tension (IFT) Analysis: Pendant Drop Method
% Description: Processes experimental IFT data, calculating Bond (Bo) 
% and Worthington (Wo) numbers to assess measurement convergence.
% Author: Hesam Pero

clc; clear; close all;

%% 1. Data Import
% Update these filenames with your local data files
wacker   = readtable('Wacker_new2');
dow_corn = readtable('Edited3_DC_183');
shinetsu = readtable('shinetsu_new2');

%% 2. Physical Parameters & Constants
g = 9.81; % [m/s^2] Gravity
Dn_large = 1.83; % [mm] Needle size 1
Dn_small = 0.70; % [mm] Needle size 2

%% 3. Dimensionless Number Calculations
% Bond Number (Bo)
Bo_wacker = (wacker.DD .* g .* wacker.R.^2) ./ wacker.IFT;
Bo_dow    = (dow_corn.dd .* g .* dow_corn.r.^2) ./ dow_corn.ift;

% Worthington Number (Wo)
Wo_wacker   = (wacker.DD .* g .* wacker.VOL) ./ (pi .* wacker.IFT .* Dn_large);
Wo_dow      = (dow_corn.dd .* g .* dow_corn.vol) ./ (pi .* dow_corn.ift .* Dn_large);
Wo_shinetsu = (shinetsu.Dd .* g .* shinetsu.VOl) ./ (pi .* shinetsu.IFt .* Dn_large);

%% 4. Statistical Analysis (Convergence Check)
if any(Bo_dow > 0.2)
    mean_IFT_Dow = mean(dow_corn.ift(Bo_dow > 0.2));
    fprintf('Mean IFT (Dow Corning) at Bo > 0.2: %.2f mN/m\n', mean_IFT_Dow);
end

%% 5. Visualization: IFT vs Worthington Number (Convergence)
figure('Name', 'IFT Convergence Analysis');
hold on;
plot(Wo_wacker, wacker.IFT, 'b*', 'DisplayName', 'Wacker AK-1000');
plot(Wo_dow, dow_corn.ift, 'r*', 'DisplayName', 'Dow Corning 200 0.65CS');
plot(Wo_shinetsu, shinetsu.IFt, 'g*', 'DisplayName', 'Shin-Etsu KF-56');

xlabel('$Wo$', 'Interpreter', 'latex', 'FontSize', 14);
ylabel('$\gamma$ (mN/m)', 'Interpreter', 'latex', 'FontSize', 14);
title('Interfacial Tension Convergence');
grid on; grid minor; box on;
legend('Location', 'best');
xlim([0 1]); ylim([0 160]);
hold off;
