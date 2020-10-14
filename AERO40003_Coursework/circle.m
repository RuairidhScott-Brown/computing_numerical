function [xunits, yunits]= circle(x,y,r)
th = 0:pi/90:2*pi;
xunits = r*cos(th) + x;
yunits = r*sin(th) + y;
end
