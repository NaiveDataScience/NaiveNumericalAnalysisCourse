function[x, norm_rk, k] = CG(A, b)
	n = size(A,1);
	x = zeros(n,1);
	k = 0;
	p = zeros(n,1);
	r = ones(n,1);
	norm_rk = zeros(1,10000);
	while norm(r) > 0.0001
		r = b - A*x;
		A_p = A*p;
		if k==0
			beta = 0;
		else
			beta = -(r'*A_p)/(p'*A_p);
		end

		p = r + beta*p;
		alpha = (r'*p)/(p'*A*p);
		x = x + alpha*p;
		k = k + 1;
		norm_rk(1,k) = norm(r);
	end
end