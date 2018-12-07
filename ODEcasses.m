% dslove can be used to solve de
syms t
y = dsolve('D2y + 5*Dy + 6*y = 0 ', 'y(0)=0','Dy(0)=0')
subs(diff(y,t),t,0)

% general code

clc
clearvars
clear all
syms x A B m
a= input("Enter D2y coefficient")
b= input("Enter Dy coefficient")
c = input("Enter the coefficient of y")
disc = b^2-4*a*c;
m=subs(solve(' a*m^2 + b*m + c'));
if (disc>0)
  CF = A*exp(m(1)*x) + B*exp(m(2)*x);
elseif(disc == 0)
  CF = (A+B*x)*exp(m(1)*x);
else
alpha = real(m(1))
beta = imag(m(1))
CF = exp(alpha*x)*(A*cos(beta*x)) + B*sin(beta*x);
end
y_gen = CF

% code including constant

clc
clearvars
syms t m
% Complimentary function
ycf = 'exp(m*t)' % constant for equation
y1 = diff(ycf,t)
y2 = diff(y1, t)
y3 = simplify(subs('D2y + 5*Dy + 6*y =0',{'y','Dy','D2y'}, {ycf,y1,y2}))
ycf = fsolve('y3','m')
% Particular Integral
y4 = 'A*exp(-5*t)'
y5 = diff(y4,t)
y6 = diff(y5,t)
y7 = simplify(subs('D2y + 5*Dy + 6*y = exp(-5*t)',{'y','Dy','D2y'}, {y4,y5,y6}))
ypi = solve('y7','A')
