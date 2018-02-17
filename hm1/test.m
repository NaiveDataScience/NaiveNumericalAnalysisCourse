%% Homework 2
% ID:15307130224
% 
% Here are three problems about error
% This documentation will demonstrate it.
% 
%% Quesion 1
%
% The random matrixs are A and B, matlab_result is the result computed by matlab, and the your_result is the result computed by your naive method,
% We use fro norm to calculate the error in computing matrix product

%%

fprintf("Raw matrix A:\n");
A = rand(5, 5);

fprintf("Raw matrix B:\n");
B = rand(5, 5);

fprintf("A*B by matlab\n");
matlab_result = A*B


fprintf("A*B by yourself\n");
your_result = calculate_matrix(A,B)

error_result = your_result.-matlab_result;

fprintf("Error result is:\n");
norm(error_result, 'fro')
%%



%% Question2 Test vector norm-1,2,inf
%%

random_vector = rand(100, 1);

% Calculate by the matlab

matlab_vector_1 = norm(random_vector, 1)
matlab_vector_2 =norm(random_vector, 2)
matlab_vector_inf = norm(random_vector, inf)


% calculate by yourself

x_vector_1 = sum(abs(random_vector))
x_vector_2 = sqrt(sum(random_vector.^2))
x_vector_inf = max(abs(random_vector))

error_1 = (x_vector_1-matlab_vector_1)/matlab_vector_1
error_2 = (x_vector_2-matlab_vector_2)/matlab_vector_2
error_inf = (x_vector_inf-matlab_vector_inf)/matlab_vector_inf

%%

%% Question2 Test vector norm-1,2,inf
%%

random_matrix = rand(10, 10);
n = size(random_matrix, 2);
m = size(random_matrix, 1);
matlab_matrix_1 = norm(random_matrix, 1)
matlab_matrix_2 = norm(random_matrix, 2)
matlab_matrix_inf = norm(random_matrix, inf)


x_matrix_1 = max(sum(abs(random_matrix)(:,1:n),1))

x_matrix_2 = sqrt(max(eig(random_matrix'*random_matrix)))


x_matrix_inf = max(sum(abs(random_matrix)(1:m,:),2))

(matlab_matrix_1-x_matrix_1)/matlab_matrix_1
(matlab_matrix_2-x_matrix_2)/matlab_matrix_2
(matlab_matrix_inf-x_matrix_inf)/matlab_matrix_inf

%%

