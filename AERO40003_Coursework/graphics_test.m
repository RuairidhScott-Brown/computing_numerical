th = 0:pi/50:2*pi;
r = 4;
xunits = r*cos(th);
yunits = r*sin(th);
hold
[x,y] = circle(0,0,4);
[x1,y1] = circle(0,0,6);
[x2,y2] = circle(0,0,12);
[x3,y3] = circle(0,0,17);
[x4,y4] = circle(0,0,20);
[x5,y5] = circle(0,0,22);
[x6,y6] = circle(0,0,30);
[x7,y7] = circle(0,0,34);

    
plot(x,y,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7)
%plot(4,0,'.', 'MarkerSize', 70, 'MarkerEdgeColor','k','MarkerEdgeColor','k')
p = plot(x,y,'.','MarkerSize', 20, 'EraseMode','none')
th_d = 0
for i = 1:1:10000;
    th_d  = th_d + pi/80
    x_ani = 4*cos(th_d);
    y_ani = 4*sin(th_d);
    set(p,'XData',x_ani,'YData',y_ani)
    drawnow
end
hold off