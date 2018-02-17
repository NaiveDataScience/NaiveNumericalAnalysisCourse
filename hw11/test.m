gamma = 0.1;
beta = 0.7;
x = randn(2,1);
iterations = 1000;
alpha_0 = 0.1;
handler = @f;
for k = 1:iterations
    current_grad = grad(handler, x);
    alpha = alpha_0;
    while f(x - alpha*current_grad) > f(x) - alpha*gamma*current_grad'*current_grad
        alpha = beta * alpha;
    end
    x = x - alpha*current_grad;
end
x
f(x)
    
