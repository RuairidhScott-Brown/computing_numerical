clc
clear
x = 1;


tic
disp(cos(x)*(exp(2*x)-2*exp(x)+1));
fprintf("inline_gb__%e\n",toc);

tic
disp(cos(1)*(exp(2.*1)-2*exp(1)+1))
fprintf("inline_____%e\n",toc)


tic
disp(calculate(1))
fprintf("function__%e\n",toc)


syms y
f_ =  cos(y)*(exp(2*y)-2*exp(y)+1);
fh = matlabFunction(f_);

tic
disp(fh(x))
fprintf("handle___%e\n",toc)
