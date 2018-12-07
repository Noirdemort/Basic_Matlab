t = linspace(0,2*pi,500);
x=cos(t);
y=sin(t);
z=sin(5*t);
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
title('3D curve');
plot3(x,y,z);
comet3(x,y,z);


