function [times,x] = BFGS(x, expect_x)
	gamma = 0.3;
	beta =0.5;
	times = 0;

	H = eye(2);
	while norm(x-expect_x,2) > 0.000001
		alpha = 1;
		bias = grad(x);
		while f(x - bias*alpha)>f(x)-alpha*gamma*dot(bias,bias);
			alpha = alpha*beta;
		end

		s = bias*alpha;
		y = grad(x)-grad(x - bias*alpha);
		x = x - bias*alpha;
	
		V = eye(2) - s*y'/dot(y,s);
		H = V'*H*V + s*s'/dot(y,s);
		times = times + 1;
	end
	x
end
