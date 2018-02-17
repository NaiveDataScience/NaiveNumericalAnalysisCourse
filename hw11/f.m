function [result] = f(x)
	a = [1;3];
	b = [1;-3];
	c = [-1;0];
	result = exp(a'*x-0.1) + exp(b'*x-0.1) + exp(c'*x-0.1);
end