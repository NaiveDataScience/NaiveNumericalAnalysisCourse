function[x, norm_rk, k] = GD(A, b)
	n = size(A,1);
	x = randn(n,1);
	
	k = 0;
	r = ones(n,1);
	norm_rk = zeros(1,50000);
	while norm(r) > 0.5
		r = b - A*x;
		alpha = (r'*r)/(r'*A*r);
		x = x + alpha*r;
		k = k + 1;
		norm_rk(1,k) = norm(r);
	end
end