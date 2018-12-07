syms x y
f = input('Enter the function f(x,y): ');
f1 = diff(f,x);
f2 = diff(f,y);
P = inline(vectorize(f(1)),'x','y');
Q = inline(vectorize(f(2)),'x','y');
x = linspace(-2,2,10);y=x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V,1)
axis on
xlabel('x')
ylabel('y')
hold on
ezcontour(f,[-2 2])
% check at log(x^2 + y^2)
