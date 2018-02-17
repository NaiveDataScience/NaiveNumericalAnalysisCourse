function [Q, A] = household(A)
	[m, n] = size(A);

	Q = eye(m);
	for k = 1:n
		x = A(k:m, k);

		e = zeros(m-k+1, 1);
		e(1,1) = 1;

		v_k = x + sign(x(1))*norm(x,2)*e;
		v_k = v_k/norm(v_k,2);

		H = eye(m);
		H(k:m,k:m) = eye(m-k+1) - 2*v_k*v_k';
		A(k:m,k:n) = A(k:m,k:n) - 2*v_k*(v_k'*A(k:m,k:n));

		Q = Q * H';
	end

end