function root=bisection_method(func, independant, init_prediction_a, init_prediction_b)
f_a = subs(func,independant, init_prediction_a);
f_b = subs(func, independant, init_prediction_b);
a = init_prediction_a;
b = init_prediction_b;
m = 0;
f_m = 1;
while abs(f_m) > 10^(-5)
    m = (a+b)/2;
    f_m = subs(func, independant, m);
    if f_m*f_a < 0
        b = m;
    elseif f_m*f_b < 0
        a = m;
    end 
end
root = m;
end