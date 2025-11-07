% Luis Kligman --- Lab 9

% Load data
data = load('china_data.txt');  % assumes two columns: year, income
year = data(:,1);
income = data(:,2);

% Build A and b
A = [ones(length(year), 1), year];
b = income;

% Solve (two equivalent, prefer backslash or lstsq for stability)
x_hat2 = (A' * A) \ (A' * b);  % normal equations

c = x_hat2(1);
d = x_hat2(2);

% Display
fprintf('y-intercept c = %.6f\n', c);
fprintf('slope d = %.6\n', d);

% Plot
figure;
scatter(year, income, 40, 'filled');
hold on;
xline = linspace(min(year)-1, max(year)+1, 100)';
yline = c + d * xline;  % Calculate the fitted line values
plot(xline, yline, 'LineWidth', 2);
xlabel('Year');
ylabel('Income');
title(sprintf('Linear fit: income = %.4f + %.4f*year', c, d));
legend('Data','Regression Line','Location','best');
grid on;