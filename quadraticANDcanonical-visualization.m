% Visualization of Quadratic and canonical form
clc
clearvars	
syms x y
x = -3:0.01:3;
y=x;
[X,Y] = meshgrid(x,y);
z = 5*X.^2 + 6*X.*Y + 5*Y.*2;
d = 2*X.^2 + 8*Y.^2;
figure(1)
C1 = contour(x,y,z,[3,3])
hold on
figure(2)
C2 = contour(x,y,d,[3,3])
