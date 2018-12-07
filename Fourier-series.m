% Fourier series
clear all
x=1/pi;
f=0;
t=linspace(-pi,pi);
figure;
hold on;
for i=1:1:100
	b = -(-1)^i
	bn = (x*1/i)*b
	f=f+bn*sin(i*t);
	plot(t,f)
end

