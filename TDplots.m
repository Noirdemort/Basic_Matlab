% Following for 3-d plots
[x,y]=meshgrid(-2:0.2:2);
g = x.*y.^2 - x.^3
surf(x,y,g)
colormap rainy % use various seasons name
shading interp
% use fsurf in case of syms variables.
% shading interp -> this command vanishes the grid and smoothens the surface.