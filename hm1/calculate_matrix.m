function result = calculate_matrix(A, B)

    m = size(A,1);
    n = size(B,2);
    result = zeros(m, n);

    for i = 1:m
        for j = 1:n
            result(i,j) = A(i,:) * B(:,j);
        end
    end
end