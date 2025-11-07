A = [1 2; 2 4];
[isDiag, P, D, v] = assignment8(A)

P'*P          % ~ I
A - P*D*P'    % ~ 0