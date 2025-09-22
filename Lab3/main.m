close all;
clear all;
clc;

u = [3, 4];
v = [1, 2, 3];
w = [1; 2];
x = [1, 2];
y = [1; 2; 3]
A = [1, 2; 3, 4];

cases = {
    {'mydot(u, x)', u, x}
    {'mydot(u, v)', u, v}
    {'mydot(u, w)', u, w}
    {'mydot(w, x)', w, x}
    {'mydot(u, A)', u, A}
};

for i = 1:length(cases)
    name = cases{i}{1}
    a = cases{i}{2}
    b = cases{i}{3};

    try
        result = mydot(a, b);
        fprintf('%s = %g\n', name, result);
    catch ME
        fprintf('%s threw an error: %s\n', name, ME.message);
    end
end