% Harmonic analysis
clc
clear all
t = [0 pi/2 2*pi/2 3*pi/2] ;
x= [0 1 2 3];
x=(1/4)*fft(x)


% fft -> discrete fourier transform
% t is succession
% x represents data points
% a0 -> a0/2 here the a0 receive should be halved to get correct a0
% division by 4 in expression of x is due to number of data points and is subjected to variation with #data-points.(no. of data points)


% The following code is entirely different approach than above and shall not be used in conjunction with it.

clc
clear all

x = input('Enter X values: ');
y = input('Enter Y values: ');
p = input('Number of harmonic terms: ');
n = length(x);
m = n-1;
c = (x(n)-x(1))/2;
a=0;
for i=1:1:m
  a = a + y(i);
end
a = (1/m)*a;
disp(strcat('a0=',num2str(a)))
for j=1:1:p
  a=0;
  b=0;
  for i=1:1:m
    a = a+y(i)*cos((j*pi*x(i))/c);
    b = b+y(i)*sin((j*pi*x(i))/c);
  end
  a= 2/m*a;
  b=(2/m)*b;
  disp(strcat('a',num2str(j),'=',num2str(a)))
  disp(strcat('b',num2str(j),'=',num2str(b)))
  disp(strcat('Harmonic ',num2str(j), '= (', num2str(a),')cos((', num2str(j),'*pi*x)/', num2str(c),') + (',num2str(b),')sin((',num2str(j),' *pi*x/',num2str(c)))  
end
% to get exact values enter values till the last point of period like 0 as well as 2*pi.
