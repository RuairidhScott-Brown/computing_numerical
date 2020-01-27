
function root=newton_raph(func, independant, init_prediction)
f = subs(func, independant, init_prediction);
diff_f = subs(diff(func), independant, init_prediction);
solution = init_prediction;
while abs(f) > 10^(-5)
    solution = solution - (f/diff_f);
    f = subs(func, independant, solution);
    diff_f =  subs(diff(func), independant, solution);
end
root = solution;
end