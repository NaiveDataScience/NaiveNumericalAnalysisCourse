%Home Work9
%% 15307130224 GuoZhen She
%% I seperate the plots into two pictures

dimension = 10
% Initialization
A = rand(dimension);
A = A'*A
b = randn(dimension,1)
Thresheold = 0.0001

% Gradient descent
[x, norm_rk, k] = GD(A,b);
figure(1)
plot(norm_rk(1,1:k));
xlabel("k");
ylabel("norm(r_k)");
title("Normal Gradient");


% Gradient descent
a = 3
[x, norm_rk, k] = CG(A,b);
figure(2)
plot(norm_rk(1,1:k));
xlabel("k");
ylabel("norm(r_k)");
title("Conjugate Gradient");

