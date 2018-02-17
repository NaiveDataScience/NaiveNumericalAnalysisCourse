function[Q,R] = MGS(A)

[m, n] = size(A);

Q = zeros(m,n);
R = zeros(n);

for k = 1:n
	R(k, k) = normest(A(:,k));
	Q(:,k) = A(:,k)/R(k,k);

	for j = k+1:n
		R(k,j) = dot(A(:,j),Q(:,k));
		A(:,j) = A(:,j) - R(k,j)*Q(:,k);
	end
end




