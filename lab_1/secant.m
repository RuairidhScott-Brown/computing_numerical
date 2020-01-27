function root=secant(func, independant, init_prediction_n0, init_prediction_n1)
f_n0 = subs(func, independant, init_prediction_n0);
f_n1 = subs(func, independant, init_prediction_n1);
solution =  1;
n0 = init_prediction_n0;
n1 = init_prediction_n1;
while abs(f_n1) > 10^(-5)
    solution = n1 - f_n1*((n1 - n0)/(f_n1 - f_n0));
    f_n0 = f_n1;
    n0 = n1;
    n1 = solution;
    f_n1 = subs(func,independant,solution);
end
root = solution;

end