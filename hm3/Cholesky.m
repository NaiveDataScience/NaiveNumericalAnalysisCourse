function[L] = Cholesky(A)

[m,n] = size(A);
L = zeros(n);

for k = 1:n
	L(k:n,k) = A(k:n,k)/sqrt(A(k,k));
	for j = k+1:n
		L(j,k) = A(j,k)/A(k,k);
		A(j,k+1:n) = A(j,k+1:n)-L(j,k)*A(k,k+1:n);
	end
end


