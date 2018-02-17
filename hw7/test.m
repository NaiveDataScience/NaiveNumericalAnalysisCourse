%% Report
% 佘国榛
% 15307130224

%% Problem 4， the former problem can be seen in the jog file in the same system.

%% normalization algorithm
% function [lambda] = eig(A, x, iteration_cout)
%	lambda = 0;
%	for k = 1:iteration_cout
%		v = A*x;
%		x = v/norm(v,2);
%		lambda = x'*A*x;
%	end
%
% end

%%
A = [-261,209,-49;
	-530, 422, -98; 
	-800,631,-144];
x = [1,0,0]';
lambda_1 = eig(A, x, 10)
lambda_2 = eig(A, x, 100)
lambda_3 = eig(A, x, 1000)


%%