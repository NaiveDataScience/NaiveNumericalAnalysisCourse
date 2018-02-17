function [lambda] = eig(A, x, iteration_cout)
	lambda = 0;
	for k = 1:iteration_cout
		v = A*x;
		x = v/norm(v,2);
		lambda = x'*A*x;
	end

end