% Linear Algebra Lab --- Assignment One
% Luis Kligman
% Section #: 344-003
% Lab #: 344-002

close all;
clc;
clear;

% Start a diary file to record MATLAB output
diary('assignment_1_diary.txt');

% --- Problem 2 ---
% Define matricies A and B
A = [8, 1, 6; 3, 5, 7; 4, 9, 2];
B = [2, 7, 6; 9, 5, 1; 4, 3, 8];

% Compute the matrix product AB
AB = A * B;
disp('Matrix product AB = ')
disp(AB);

% Compute the componentwise product A.*B
A_comp_B = A.*B;
disp('Componentwise product A.*B');
disp(A_comp_B);

% --- Problem 3 --- 
% Plotting functions
% Define x values over [-10, 10] with 200 points
x = linspace(-10,10,200);

% Define the three functions
f = -6*x + 50;            % Linear function
g = sqrt(abs(25*x + 4));  % Squre root of absolute value
h = x.^2;                 % Quadratic

% Create a figure and plot each functions
figure; 
plot(x, f, '-', 'LineWidth', 1.5);
hold on;
plot(x, g, '--', 'LineWidth', 1.5);
plot(x, h, ':', 'LineWidth', 1.5);

% Add legend, labels, title, and grid
legend('f(x) = -6x + 50', 'g(x) = sqrt(|25x+4|)', 'h(x) = x^2', 'Location', 'best');
xlabel('x');
ylabel('y');
title('Assignment 1: Function f, g, and h');
grid on;

% Save the figure
saveas(gcf, 'Assignment_1_plot.png');

% Stop recording diary
diary off;


