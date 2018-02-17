function [result] = grad(f, x)
	a = [1;3];
	b = [1;-3];
	c = [-1;0];
	result = zeros(size(x));
	minor = 0.001;
	for i = 1:size(x,1)
		x_new = x;
		x_new(i,1) = x(i) + minor;
		result(i,1) = (f(x_new)-f(x))/minor;
	end

% result = exp(a'*x-0.1)*a + exp(b'*x-0.1)*b + exp(c'*x-0.1)*c;
end