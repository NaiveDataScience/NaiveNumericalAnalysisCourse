function[flag, U] = forward(A)

[m, n] = size(A);

flag = 1

%% 检验是否是方阵
if (m ~= n)
	L = 0;
	U = 0;
	flag=0;
	return
end

%% 检验是否满秩
if (m != rank(A))
	L = 0;
	U = 0;
	flag=0;
	return 
end

temp_L = eye(m);
U = A;
for i = 1:m-1
	%search_i = i
	%while search_i<=m && (U(search_i, search_i) == 0) 
	%	search_i = search_i + 1
	%end

	%if (search_i > m)
	%	L = 0;
	%	U = 0;
	%	return
	%end

	%U([i, search_i], :) = U([search_i, i], :)

	temp_L = eye(m);
	pivot = U(i, i);

	%% 如果对角线出现0，LU失败
	if (pivot == 0)
		L = 0;
		U = 0;
		flag=0;
		return 
	end	

	for j = i+1:m
		temp_L(j,i) = -U(j, i)/pivot;
	end
end


