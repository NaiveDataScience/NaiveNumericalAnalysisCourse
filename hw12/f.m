function [ret] = f(x)
	x_1 = x(1,1);
	x_2 = x(2,1);
	ret = 100*(x_2+x_1*x_1)**2+(1-x_1)**2;
end