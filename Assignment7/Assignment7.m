%% --- Lab Assignment 7  Luis Kligman ---

clear all;
close all;
clc;

% Example 1:
V1 = [1, 2,-3, 4,-5];

B1 = [0, 1, 1, 1, 1;
      0, 0, 1, 1, 1;
      0, 0, 0, 1, 1;
      0, 0, 0, 0, 1;
      0, 0, 0, 0, 0 ];

% Example 2:
V2 = [50,-35,-25, 40,-30];

B2 = [0,-1, 0, 0, 1;
      0, 0,-1, 0, 0;
      0, 0, 0,-1, 0;
      0, 0, 0, 0,-1;
      0, 0, 0, 0, 0 ];

% Example 3:
V3 = [50, 50,-60,-40, 0];

B3 = [0, 1, 0, 1, 1;
      0, 0, 1, 0, 1;
      0, 0, 0,-1,-1;
      0, 0, 0, 0,-1;
      0, 0, 0, 0, 0 ];

n = length(V3);

%% --- Identify all directed edges from B ---
edges = []; % each row [i j] means flow variable from xi to xj
for i = 1:n
    for j = i+1:n
        if B3(i,j) ~= 0
            edges = [edges; i j];
        end
    end
end

m = size(edges,1); % number of edges (columns)
C = zeros(n,m);

%% --- Build flow coefficient matrix ---
for k = 1:m
    i = edges(k,1);
    j = edges(k,2);
    if B3(i,j) == 1       % flow i → j
        C(i,k) = -1;     % out of i
        C(j,k) =  1;     % into j
    elseif B3(i,j) == -1  % flow j → i
        C(i,k) =  1;     % into i
        C(j,k) = -1;     % out of j
    end
end

%% --- Augment with V ---
Aug = [C V3'];

%% --- Solve System ---
rrefC = rref(Aug);
if rank(C) < rank(Aug)
    disp('No Solution Exists');
else
    X_p = C\V3';  % Particular Solution
    X_s = null(C, 'r');  % Special Solution Space
    disp('Particular Solution Xp:');
    disp(X_p);
    disp('Special Solution Basis Xs:');
    disp(X_s);
end