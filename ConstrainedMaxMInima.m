clc 
clearvars
syms x y L
f = input('Enter the function f(x,y)');
g = input('Enter the constraint function g(x,y): ');
F = f+ L*g;
gradF = jacobian(F,[x,y]);
[L,x1,y1] = solve(g,gradF(1),gradF(2),'Real',true);
x1 = double(x1);y1 = double(y1);
xmx = max(x1); xmn = min(x1);
ymx = max(y1); ymn = min(y1);
range =[xmn-3 xmx+3 ymn-3 ymn+3];
ezmesh(f,range); hold on; grid on;
h = ezplot(g,range); set(h,'LineWidth',2);
tmp = get(h,'contourMatrix');
xdt = tmp(1,2:end);
ydt = tmp(2,2:end);
zdt = double(subs(f{x,y},{xdt,ydt}));
plot3(xdt,ydt,zdt,'-r','LineWidth',2);axis(range);
for i = 1:numel(x1)
    G(i) = subs(f,[x,y],[x1(i),y1(i)]);
    plot3(x1(i),y1(i),G(i),'*k','MarkerSize',20);
end
title('Constrained Maxima/minima')