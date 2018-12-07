clc 
clearvars
syms x y z L
f = input('Enter the function f(x,y,z)');
g = input('Enter the constraint function g(x,y,z): ');
F = f+ L*g;
gradF = jacobian(F,[x,y,z]);
[L,x1,y1, z1] = solve(g,gradF(1),gradF(2),gradF(3));
Z =  [x1 y1 z1];
disp('[x y z]=')
disp(Z)
