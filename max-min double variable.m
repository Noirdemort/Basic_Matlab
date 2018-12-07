clc
clear all
syms x y real
f = input('Enter the function: ');
fx = diff(f,x);
fy = diff(f,y);
[ax ay] = solve(fx,fy);
fxx= diff(fx,x);
fyy = diff(fy,y);
fxy = diff(fx,y);
D = fxx*fyy - fxy^2;
figure
ezsurf(f,[min(double(ax))-0.5, max(double(ax))+0.5, min(double(ay))-0.5, max(double(ay))+0.5]);
colormap autumn
shading interp
for i = 1:1:size(ax)
    T1 = subs(subs(D,x,ax(i)),y,ay(i));
    T2 = subs(subs(fxx,x,ax(i)),y,ay(i));
    T3 = subs(subs(f,x,ax(i)),y,ay(i));
if (double(T1)==0)
sprintf('The point (%d,%d) needs furhter inverstigation', double(ax(i)), double(ay(i)))
st='k+';
elseif (double(T1)<0)
    sprintf('The point (%d, %d) is a saddle point', double(ax(i)), double(ay(i)))
    st='y.';
else
    if (double(T2) <0)
        sprintf('The maximum value of the function %d occurs at (%d, %d)', double(T3), double(ax(i)), double(ay(i)))
        st='r+';
    else
        sprintf('The minimum value %d of function occurs at (%d, %d)', double(T3), double(ax(i)), double(ay(i)))
        st='k*';
    end
end
hold on
plot3(double(ax(i)), double(ay(i)), double(T3), st, 'markersize', 20);
end

