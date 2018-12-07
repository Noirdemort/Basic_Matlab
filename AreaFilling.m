clc
clearvars
syms x y y1 x1 

x1 = [];
y1 = [];

for x = 0:0.1:2*pi;
    x1 = [x1 x];
    y1 = [y1 sin(x)];
end
for x = 2*pi:-0.1:0;
   x1 = [x1 x];
   y1 = [y1 (sin(x)+5)];
end

plot(x1,y1)
fill(x1,y1,'g')
hold on
plot(x1,y1,'red')
