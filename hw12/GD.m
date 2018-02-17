function[times,x] = GD(x,expect_x)
	times = 0;
	
	gamma = 0.3;
	beta =0.5;
	while norm(x-expect_x,2) > 0.000001
		handler = @f;
		bias = grad(x);
		norm(x-expect_x,2);
		alpha = 1;
		while f(x - bias*alpha)>f(x)-alpha*gamma*(bias'*bias);
			alpha = alpha*beta;
		end
		x = x - alpha*bias;
		times = times + 1;
		f(x);
	end
	x
end