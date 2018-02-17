function [result] = grad(x)
	result = zeros(2,1);
	result(1,1) = 400*(x(1,1)**3)+400*x(1,1)*x(2,1)+2*x(1,1)-2;
	result(2,1) = 200*x(2,1)+200*(x(1,1)**2);
end