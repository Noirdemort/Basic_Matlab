clc
clearvars
syms x
f = input('Enter the function: ');
fL = input('Enter the interval on which the function is defined: ');
yr = input('Enter the axis of rotation(enter only c value): ');
iL = input('Enter the integration limits: ');
Volume = pi*int((f-yr)^2,iL(1),iL(2));
disp(['Volume is: ', num2str(double(Volume))])
fx = inline(vectorize(f));
xv = linspace(fL(1),fL(2),201);
xiv = linspace(iL(1),iL(2),201);
xlim = [fL(1) fL(2)+0.5];
ylim = fx(xlim);
figure('Position',[100 200 560 420])
hold on;
plot(xv,fx(xv),'-b','LineWidth',2);
fill([xv fliplr(xv)],[fx(xv) ones(size(fliplr(xiv)))*yr],[0.8 0.8 0.8])
plot([fL(1) fL(2)],[yr yr],'-r','LineWidth',2);
legend('Function Plot','Filled Region','Axis of Rotation','Location','Best');
title('Function y=f(x) and Region');
xlabel('x-axis');
ylabel('y-axis');
hold on;
[X,Y,Z] = cylinder(fx(xiv)-yr,100);
figure('Position',[700 200 560 420])
Z = iL(1) + Z.*(iL(2)-iL(1));
surf(Z,Y+yr,X,'EdgeColor','none','FaceColor','flat','FaceAlpha',0.6);
hold on;
plot([iL(1) iL(2)],[yr yr],'-r','LineWidth',2);
title('Solid of Revolution')
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
view(22,11);