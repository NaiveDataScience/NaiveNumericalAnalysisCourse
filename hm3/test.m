%% Test 1
%% Cholesky function

% function[L] = Cholesky(A)

%[m,n] = size(A);
%L = zeros(n);

%for k = 1:n
%	L(k:n,k) = A(k:n,k)/sqrt(A(k,k));
%	for j = k+1:n
%		A(j,k+1:n) = A(j,k+1:n)-L(j,k)*A(k,k+1:n);
%	end
%end
%%

%%Begin to test the Cholesky decompostion 
%
fprintf("test1, n =3\n");
test = randn(3)
L = Cholesky(test)
L = L'

fprintf("test2, n=4\n");
test = randn(4)
L = Cholesky(test)
L = L'

fprintf("test3, n=5\n");
test = randn(5)
L = Cholesky(test)
L = L'
%
%%