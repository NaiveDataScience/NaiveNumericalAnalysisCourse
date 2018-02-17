pkg load image;

raw = imread('logo.jpg');
gray = rgb2gray(raw);
target = double(gray)/255;

K = 100;
[U,S,V] = svd(target);
errors = zeros(1,K);
indexes = linspace(1,K,K);
for k = 1:K
	sum = U(:,1:k)*S(1:k,1:k)*V(:,1:k)'
	errors(k) = norm(sum-target, 'fro');
end

plot(indexes, errors);