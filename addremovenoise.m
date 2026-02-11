%% Signal Denoising Experiment
clear; clc; close all;

% 1. Parameters
fs = 1000;              % Sampling frequency (1000 Hz)
t = 0:1/fs:1;           % Time vector (1 second)
f_signal = 5;           % Signal Frequency (5 Hz - slow)
amplitude = 1;          % Signal Amplitude

% 2. Generate Original Sinusoidal Signal
original_signal = amplitude * sin(2 * pi * f_signal * t);

% 3. Add Gaussian White Noise
noise_level = 0.5;      % Adjust this to make it "messier"
noise = noise_level * randn(size(t));
noisy_signal = original_signal + noise;

% 4. Remove Noise Using a Low-pass Filter (Butterworth)
cutoff_frequency = 10;  % Cutoff at 10 Hz
order = 4;              % Filter "sharpness"
[b, a] = butter(order, cutoff_frequency / (fs/2), 'low');
filtered_signal = filter(b, a, noisy_signal);

% 5. Plotting the results
figure('Name', 'Signal Denoising Process');

% Plot Original vs Noisy
subplot(2,1,1);
plot(t, original_signal, 'k', 'LineWidth', 2); hold on;
plot(t, noisy_signal, 'r', 'AlphaData', 0.5);
title('Original Signal vs. Noisy Signal');
legend('Clean', 'Noisy');
grid on;

% Plot Noisy vs Filtered
subplot(2,1,2);
plot(t, noisy_signal, 'r'); hold on;
plot(t, filtered_signal, 'b', 'LineWidth', 2);
title(['Filtered Signal (Cutoff = ', num2str(cutoff_frequency), ' Hz)']);
legend('Noisy', 'Filtered');
grid on;