clc
clear all
syms t s Y
y2 = diff(sym('y(t)'),2);
y1 = diff(sym('y(t)'),1);
y0 = sym('y(t)');
a = input('the coeff of d2y: ');
b = input('the coeff of dy: ');
c = input('the coeff of y: ');
nh = input(' non-homogeneous part: ');
eqn = a*y2 + b*y1 + c*y0 - nh;
LTY = laplace(eqn,t,s);
d = input('initial value at y(0): ');
e = input('initial value at dy(0): ');
LTY = subs(LTY, {'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,d,e});
eq = collect(LTY,Y); % --> takes Y to one side of equation
Y = simplify(solve(eq,Y));
y = simplify(ilaplace(Y,s,t));
ezplot(y)

% dsolve is quite easy.

syms t
y1 = dsolve('D2y + 16*y = cos(4*t)','y(0)=0','Dy(0)=1')
y2 = dsolve('D2y + 16*y = cos(4*t)*(1 - heaviside(t-pi))','y(0)=0','Dy(0)=1')
y3 = dsolve('D2y + y = dirac(t-2*pi)','y(0)=0','Dy(0)=0')
y4 = dsolve('D2y + y = dirac(t-2*pi)','y(0)=1','Dy(0)=0')
