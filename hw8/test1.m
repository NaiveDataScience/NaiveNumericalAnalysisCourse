sigma = 1.5

area_x = [10+5*rand(100,1),20+5*rand(100,1),30+5*rand(100,1),40+5*rand(100,1)];
area_y = [10*rand(100,1),10*rand(100,1),10*rand(100,1),10*rand(100,1)];


plot(area_x, area_y, '.')


W=zeros(400,400);

for i = 1:400
	for j = 1:400
		W(i,j) = exp((-((area_x(i)-area_x(j))^2+(area_y(i)-area_y(j))^2)^0.5)/(2*sigma*sigma));
	end
end

D = zeros(400,400);
for i = 1:400
	D(i,i) = sum(W(i,:));
end

L = D - W

L_sys = D^(-0.5)*L*D^(-0.5);
L_rw = D^(-1);


[V_tras,S,V] = eig(L_sys);

S(400,400)
S(399,399)
S(398,398)
S(397,397)


U = V(:,1:4);

H = D^(-0.5)*U;

subplot(2,2,1);plot(H(:,1),'.');
subplot(2,2,2);plot(H(:,2),'.');
subplot(2,2,3);plot(H(:,3),'.');
subplot(2,2,4);plot(H(:,4),'.');




