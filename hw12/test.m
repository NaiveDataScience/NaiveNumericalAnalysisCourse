%%Homework11

%15307130224

%Question1
x = [-1;1.5]
x_expect = [1;-1]

printf('GD iterations');
time= GD(x, x_expect)
printf('Newton iterations');
time = Newton(x, x_expect)
printf('BFGS iterations');
time = BFGS(x,x_expect)

%Question2
loyd();