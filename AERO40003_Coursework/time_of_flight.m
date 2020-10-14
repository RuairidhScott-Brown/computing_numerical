function time = time_of_flight(init_height, init_vel, angle_rad, g)
height = init_height;
count = 0;
time_step = 0.001;
while height > 0
    height = init_height +init_vel*(count*time_step)*sin(angle_rad) - ((g*(count*time_step)^2)/2);
    count = count + 1;
end 

time =  (count)*time_step;

