clc
clear all
syms x y z
f1 = 2*x + y + z ==2;
f2 = -x + y - z==3;
f3 = x + 2*y + 3*z==-10;
sol = solve([f1,f2,f3],[x,y,z]);
xsol = sol.x
ysol = sol.y
zsol = sol.z

% or another method is

[A,B] = equationsToMatrix([f1,f2,f3],[x,y,z]);
X = linsolve(A,B)

% Cailey- Hamilton equation :- each matrix satisfies its own characterstic equation

a= [5 3;3 5];
p=poly(a)
b=polyvalm(p,a)

% b is a zero matrix
