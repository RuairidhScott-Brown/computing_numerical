clc 
clear
syms x 
k = 0.28;
re = 3750;
func = ((1/k)*log(re*sqrt(x))+ (14-(5.6/k)))^(-2);
solution = 0.007;

%while true
%   disp(vpa(solution));
%    solution = subs(func, x, solution);
%end 


%simpsons rule:
%limits from -1 to 1
limit_high = 1;
limit_low = -1;
func_2 = x^5 + x^2 + x;
n = 100;
h = (limit_high -  limit_low)/n;

start = subs(func_2,x,limit_low)
finish = subs(func_2,x,limit_high)
total = 0;
for i = 1:2:(n-1)
    disp(i)
    one =  4*subs(func_2,x,limit_low+(i*h));
    two = 2*subs(func_2,x,limit_low+((i+1)*h));
    total = total + (one + two);
end
error = 2*subs(func_2,x,limit_high - h);
totoal = (h/3)*(start + total + finish-error);
disp(vpa(totoal))




    

