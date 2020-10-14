clc
clear 
load('/Users/Ruairidh/Documents/space.mat')
%making one array for position and velocity
start_pos = [x';y';z'];
start_vel = [u';v';w'];
%disp(size(start_pos))
disp(start_pos)

%variables
dt = 3600;
N = 2150;
g = 6.67E-11;
hold on
%p = plot(x, y,'.','MarkerSize', 20,'EraseMode','none');

for t=1:N       %total number of plots for loop
    for j =1:length(m)   %calculate the postion
        force = [0;0;0];
        for i = 1:length(m)    %caculate the force acting on the body
            if i ~=j
                r = [start_pos(1,i)-start_pos(1,j);start_pos(2,i)-start_pos(2,j);start_pos(3,i)-start_pos(3,j)];
                %disp(r)
                r_mod = sqrt(sum(r.*r));
                %disp(r_mod)
                f = (g*m(i)*m(j))/r_mod^3;
                f_2 = r.*f;
                force = force + f_2; 
                disp(force)
            end 
        end
        start_pos(1,j) = start_pos(1,j) + start_vel(1,j)*dt + (force(1,1)*dt^2)/(2*m(j));
        start_pos(2,j) = start_pos(2,j) + start_vel(2,j)*dt + (force(2,1)*dt^2)/(2*m(j));
        start_pos(3,j) = start_pos(3,j) + start_vel(3,j)*dt + (force(3,1)*dt^2)/(2*m(j));
        
        start_vel(1,j) = start_vel(1,j) + (force(1,1)*dt)/m(j); 
        start_vel(2,j) = start_vel(2,j) + (force(2,1)*dt)/m(j); 
        start_vel(3,j) = start_vel(3,j) + (force(3,1)*dt)/m(j); 
    end 
    %scatter(start_pos(1,:),start_pos(2,:));
    %set(p,'XData',start_pos(1,:),'YData', start_pos(2,:))
    scatter(start_pos(1,1), start_pos(2,1),30,'b','.')
    scatter(start_pos(1,2), start_pos(2,2),30,'y','.')
    scatter(start_pos(1,3), start_pos(2,3),30,'g','.')
    scatter(start_pos(1,4), start_pos(2,4),30,'r','.')
    scatter(start_pos(1,5), start_pos(2,5),30,'c','.')
    scatter(start_pos(1,6), start_pos(2,6),30,'m','.')
    drawnow
    
    pause(0.1)
end
