% Final Project --- Luis Kligman
% Markov Chains --- Part 2
clear all;
close all;
clc;

%% (a.) Create a matrix, A (called the transition matrix) whose columns represent the current state of a student, either susceptible or infected, and whose rows represent the state of a student, either susceptible or infected, the next day. Here, Ai,j is the probability of a student going from current state j to the state i the next day.
% If a student is susceptible:
%   16% chance they get flu next day S -> I = .16
%   84% chance they stay susceptible S -> S = .84
% If a student is infected
%   40% chance they recover I -> S = .40
%   60% chance they stay infected I -> I = .60

% Columns = CURRENT state, rows = NEXT state

% Define the transition matrix
A = [.84, .40;
     .16, .60];

% Check column sums (should be 1 for a Markov chain)
disp('Column sums of A (should be 1):');
disp(sum(A,1));

%% (b.) If 100 students have the flu initially, how many students have the flu on the second day? How many students have the flu on the tenth day?
% Population: 5000 student total
% Initial condition: 100 infected students; 4900 susceptible

I0 = 100;  % Inital infected
S0 = 5000 - I0;  % Intial susceptible
x0 = [S0; I0];

% Day n: xN = A^N * x0
day2 = A^2 * x0;  % State on day 2
day10 = A^10 * x0;  % State on day 10

I2 = day2(2);  % Infected on day 2
I10 = day10(2);  % Infected on day 10

disp('Number of infected students on day 2:');
fprintf('%.2f\n', I2);
disp('Number of infected student on day 10:');
fprintf('%.2f\n', I10);

% Check that the population stays 5000
disp('Total population on day 2 and day 10 (should both be 5000)');
fprintf('%.2f\n', sum(day2));
fprintf('%.2f\n', sum(day10));

%% (c.) How many students have the flu initially if there are 1400 students with the flu on the third day?

% x0 = [S0; I0] (currently unknown)
% total population: S0 + I0 = 5000
% x3 = A^3 * x0
% # of infected on day 3 = I3 = 1400

% Therefore we have a 2x2 linear system in terms of S0 and I0:
%   [  1        1    ][ S0 ] = [ 5000 ]
%   [row2(1)  row2(2)][ I0 ] = [ 1400 ]

A3 = A^3

% The second row of A^3 gives how S0 and I0 contribute to infected on day 3
row2_A3 = A3(2,:); 

% Build coefficient matrix M and right hand side vector b:
% Equation 1: S0 + I0 = 5000
% Equation 2: row2_A3(1)*S0 + row2_A3(2)*I0 = 1400
M = [1,          1;
     row2_A3(1), row2_A3(2)];

b = [5000; 1400];

% Solve for [S0; I0]
x0_solution = M \ b;
S0_sol = x0_solution(1);
I0_sol = x0_solution(2);

disp('Initial susceptible and infected that lead to 1400 infected on day 3:');
fprintf('S0 ~ %.2f\n', S0_sol);
fprintf('I0 ~ %.2f\n', I0_sol);
fprintf('Check: S0 + I0 = %.2f (should be 5000)\n', S0_sol + I0_sol);