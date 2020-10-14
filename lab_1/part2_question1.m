%setup
clc;
clear;

%function
syms x
x_ = linspace(-pi()/4, 3*pi()/4,200);
f_1 = cos(x).*(exp(2.*x)-2.*exp(x)+1);
re_cast_f_1 = (cos(x).*(exp(2.*x)-2.*exp(x)+1))+x;
f = double(subs(f_1, x, x_));
solution = solve(f_1);
disp(solution)


df = diff(re_cast_f_1);
f2 = double(subs(df,x,x_));
plot(x_,f)
plot(x_,f2)
so = secant(f_1, x, 1.5,1.6);
disp(double(so))

accuracy = 1e-6;
root = pi/2;
value = pi/2;
%
%while value ~= (root+accuracy) || value ~= (root-accuracy)
%    value =  double(subs(re_cast_f_1,x,value));
%    disp(value);
%end


