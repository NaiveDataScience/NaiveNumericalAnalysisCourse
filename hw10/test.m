%Home Work9
%% 15307130224 GuoZhen She

quantity = 10;


% Initialization
A = rand(quantity);
A = A'*A
b = randn(quantity,1)


% Gradient descent
[x, norm_rk, k] = GD(A,b);
plot(log(norm_rk(1,1:k)));
xlabel("k");
ylabel("norm(r_k)");
title("Normal Gradient");
hold on;

% Gradient descent
a = 3
[x, norm_rk, k] = CG(A,b);

plot(log(norm_rk(1,1:k)));
xlabel("k");
ylabel("log(norm(r_k))");
title("Conjugate Gradient");

