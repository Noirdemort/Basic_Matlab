clc
clearvars
close all
syms x y z
v = input('Enter the velocity at time of impact: ');
rho = input('Enter density at point (x,y,z): ');
zlim = input('Enter the z limits as [z0 z1]: ');
ylim = input('Enter the y limits as [y0 y1]: ');
xlim = input('Enter the x limits as [x0 x1]: ');
if isa(ylim,'sym')
    mass =  int(int(int(rho,z,zlim(1),zlim(2)),y,ylim(1),ylim(2)),x,xlim(1),xlim(2));
else
    mass =  int(int(int(rho,z,zlim(1),zlim(2)),x,xlim(1),xlim(2)),y,ylim(1),ylim(2));
end
ke = double(0.5*mass*v^2);
disp(['The mass of solid is: ', num2str(double(mass)),'kg.']);
disp(['The K.E. is: ', num2str(ke)]);