clc
clearvars
close all
syms x y z
zlim = input('Enter the z limits as [z0 z1]: ');
ylim = input('Enter the y limits as [y0 y1]: ');
xlim = input('Enter the x limits as [x0 x1]: ');
if isa(ylim,'sym')
    Vol =  int(int(int(1,z,zlim(1),zlim(2)),y,ylim(1),ylim(2)),x,xlim(1),xlim(2));
    %viewSolid(z,zlim(1)+0*x*y,zlim(2)+0*x*y, y,ylim(1)+0*x,ylim(2)+0*x,x,xlim(1),xlim(2));
else
    Vol =  int(int(int(1,z,zlim(1),zlim(2)),x,xlim(1),xlim(2)),y,ylim(1),ylim(2));
    %viewSolid(z,zlim(1)+0*x*y,zlim(2)+0*x*y, x,xlim(1)+0*y,xlim(2)+0*y,y,ylim(1),ylim(2));
end
disp(['The volume of solid is: ',char(Vol)])
