angle = 30;
angle_rad = angle*((pi)/(180));
init_height = 10;
init_vel = 5;
g = 9.80665;

time = input("Time after deployment: ");
height =init_height +init_vel*time*sin(angle_rad) - ((g*time^2)/2);
if height < 0
    disp("Error the object has hit the ground")
else
    disp(height);
end

time_flight = time_of_flight(init_height, init_vel, angle_rad, g);
disp(time_flight)
distance_trav = time_flight*init_vel*cos(angle_rad);
disp(distance_trav)