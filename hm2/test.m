x = [50,100,150,200,250,300,350,400]
simulate = [0, 0, 0, 0 ,0 ,0, 0, 0]
counts = [0,0,0,0,0,0,0,0]

%%Question 1 is written in photo in the same direcotry

%% Test forward substitution
%
for i = 1:8
	for j = 1:10
		test = rand(i*20);
		%while (forward(test)(3) == 0)
		%	test = rand(i*20);
		%end

		tic
		[U, flag] = forward(test);
		endtime = toc

		counts(i)= counts(i) + endtime;
	end
end 
%

%% Simulate foward decomposition the triple polynomial curve

%
[p, E] = polyfit(x, counts, 2)

simulated_x = linspace(50,500)
simulate = polyval(p, simulated_x)


plot(x, counts, 'x')
hold on
plot(simulated_x, simulate)
hold off

%


%% Test the LU decomposition

%
for i = 1:8
	for j = 1:10
		test = rand(i*20);
		% while (LU(test)(3) == 0)
		% 	test = rand(i*20);
		%end

		tic
		[L, U, flag] = LU(test);
		endtime = toc

		counts(i)= counts(i) + endtime;
	end
end 

%

%% Simulate LU decomposition the triple polynomial curve

%
[p, E] = polyfit(x, counts, 3)

simulated_x = linspace(50,500)
simulate = polyval(p, simulated_x)


plot(x, counts, 'x')
hold on
plot(simulated_x, simulate)

%








