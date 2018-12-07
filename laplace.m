clc
clearvars
syms t s n
a = input('enter the function');
z = laplace(a);
disp(z);
% use ezplot to plot syms variable
