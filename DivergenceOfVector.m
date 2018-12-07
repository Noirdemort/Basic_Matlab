% check at F = [xy,x^2]
X=-4:0.5:4;Y=X;
[x,y] = meshgrid(X,Y);
div1 = divergence(x,y,x.*y,x.^2);
figure;
subplot(1,2,1);
quiver(x,y,x.*y,x.^2);
title('vector field F=[xy,x^2]')
subplot(1,2,2);
surf(x,y,div1);
title('divergence of F')
