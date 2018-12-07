clc
clearvars
clear all
syms x y
f = input('Enter The function f(x,y):');
I = input('Enter the point (a,b) around which Taylor series is sought:');
a = I(1); b=I(2);
n = input('Enter the number of terms:');

tayser = taylor(f,[x,y],[a,b],'Order',n)
