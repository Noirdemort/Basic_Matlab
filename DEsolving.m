clc
clear all
clearvars
syms t s Y
y = sym('y(t)');
y1 = diff(y,t);
a = input('Enter the coefficient of dy/dt in the equation');
b = input('Enetr the coefficient of y in the equation:');
f = input('Enter the inhomogeneous part of the equation');
y0 = input('The initial condition is y(0) is ');
% we consider eqn of the form ay'(t) + by(t)
eqnt = a*y1 + b*y - f;
eqns = laplace(eqnt,s);
eqns = subs(eqns,{'laplace(y(t),t,s)', 'y(0)'},{Y,y0});
Y = simplify(solve(eqns,Y));
y = ilaplace(Y,s,t);
disp(['The solution of the DE is:y(t)', char(y)])