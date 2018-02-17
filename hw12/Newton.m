function [times,x] = Newton(x, expect_x)
	gamma = 0.3;
	beta =0.5;
	times = 0;

	while norm(x-expect_x,2) > 0.01
		matrix = [1200*(x(1,1)**2)+400*x(2,1)-2,400*x(1,1);400*x(1,1),200]^(-1);
		bias = grad(x);
		p_k = -matrix*bias;
		alpha = 1;
		if f(x - bias*alpha)>f(x)-alpha*gamma*(bias'*bias)
			alpha = alpha*beta;
		end
		x = x + alpha*p_k;
		times = times + 1;
	end
	x
end