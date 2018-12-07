clc
clearvars
clear all
syms x
f = input('Enter The function f(x):');
a = input('Enter the point around which Taylor eries is sought:');
n = input('Enter the number of terms:');
range = input('Enter the range in form of [x0 y0 x1 y1] for plotting:');
tayser = taylor(f,x,a,'Order',n)
ezplot(f,range);
hold on
ezplot(tayser, range);
grid on
title('Taylor series approximaton of log(x)')
legend(char(f),'Taylor series approximation', 'Location', 'Best')
