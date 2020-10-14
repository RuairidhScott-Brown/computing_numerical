function temp=plate_temp(T, time,step)
    %width, height, conductivity
    w = 2;
    h = 1;
    a = 10e-5;
   
    %setting up product matrices
    dx = w/(step-1);
    dy =h/(step-1);

    %setting up matrices
    n = step;
    D = sparse(1:n,1:n,-2*ones(1,n),n,n);
    E = sparse(2:n,1:n-1,ones(1,n-1),n,n);
    S = E+D+E';
    
    %second derivative in the x direction
    d2x = full(S);
    d2x(1) = 0;
    d2x(2) = 0;
    d2x(n*n) = 0;
    d2x(n*n-1) = 0;
    
    %second derivative in the y direction
    d2y = full(S);
    d2y(1) = 0;
    d2y(n+1) = 0;
    d2y(n*n) = 0;
    d2y(n*(n-1)) = 0;
    
    %maintains constant boundary nodes
    on = ones(1,step);
    di = diag(on);
    di(1)=0;
    di(step*step) =0;
    
    for i=1:time
        T = T + di*(a/dx^2)*(T*d2x) + di*(a/dy^2)*(d2y*T);
    end
    temp = T;
end 