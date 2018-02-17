function [] = loyd()
	n = 1000;
	sigma = 0.15;
	theta = 2*pi*rand(n,1);
	r1 = 2;
	r2 = 3;

	center1 = [0,2.4];
	center2 = [0,-2.4];
	x1 = [r1*cos(theta)+sigma*randn(n,1) r1*sin(theta)+sigma*randn(n,1)];
	x2 = [r2*cos(theta)+sigma*randn(n,1) r2*sin(theta)+sigma*randn(n,1)];
	figure;
	scatter(x1(:,1),x1(:,2),'xb');
	hold on;
	scatter(x2(:,1),x2(:,2),'xr');





	E_pre = 1000;
	E = 100;
	index = 0;
	while i < 20
		i = i + 1;
		sum = [x1;x2];
		index1 = 1;
		index2 = 1;
		x1 = [];
		x2 = [];
		for index = 1:length(sum)
			dis1 = norm(sum(index,:)-center1,2);
			dis2 = norm(sum(index,:)-center2,2);
			if dis1 < dis2
				x1(index1,:) = sum(index,:);
				index1 = index1+1;
			else
				x2(index2,:) = sum(index,:);
				index2 = index2+1;
			end
		end

		center1 = mean(x1);
		center2 = mean(x2);

		E_pre = E;
		E = 0;
		residual1 = x1-center1;
		residual2 = x2-center2;
		s = [residual1;residual2];
		for index = 1:length(s)
			E += norm(s(index,:),2);
		end
	end
	figure;
	plot(center1(1,1),center(1,2),'b');
	hold on;
	plot(center2(1,1),center(1,2),'r');
	hold on;
	scatter(x1(:,1),x1(:,2),'xb');
	hold on;
	scatter(x2(:,1),x2(:,2),'xr');

end

