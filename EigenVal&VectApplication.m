% Eigen values - Solid Mechanics
% Eigen vectors - Page rank

% solid mechanics -> finding stress at a particular point on a solid body. S = F/A. stress -> 2 kinds -> i. normal (denoted by sigma, acts normal to the surface, use area of plane) ii. shear( denoted by tau, acts tangential to surface)

% [a b, b a] -> 2-d stress matrix; b is tau(xy) representing shear stress on xy plane a is sigma for x & y.
% the structure of stress matrix is quite analogous to matrix of a quadratic form.

clc
clear all
c =0.5;L=5;P=1;
x = [0:1:L];
y=[-c:0.1:c];
[X,Y] = meshgrid(x,y);
ax = (3/(4*c^3))*(L-X).*Y;
ay = zeros(length(y),length(x));
txy = -(3/(38*c^3))*(c^2-Y.^2);
for i=1:length(y)
	for j=1:length(x)
		s=[ax(i,j) txy(i,j);txy(i,j) ay(i,j)];
		p = eig(s);
		s1(i,j) = p(2);
		s2(i,j) = p(1);
	end
end
figure(1)
contour(X,Y,s1,[0.01,0.05,0.1,0.5,1,3,5,7,9.11])
title("First principal stress contours, s1")
axis tight
figure(2)
contour(X,Y,s2,[-0.01,-0.05,-0.1,-0.5,-1,-3,-5,-7,-9,-11])
axis tight
title("Second Principal stress contours, s2");

% page rank & probability matrix -> write eigen values and vectors of that matrix.q

