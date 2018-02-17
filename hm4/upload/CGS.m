function[Q,R] = CGS(A)

[m, n] = size(A);

Q = zeros(m,n);
R = zeros(n);

for k = 1:n
	v_k = A(:,k);
	for j=1:k-1
		R(j,k) = dot(A(:,k), Q(:,j));
		v_k = v_k - R(j,k)*Q(:,j);
	end

	R(k,k)= normest(v_k);
	Q(:,k) = v_k/R(k,k);
end
