syms x y
f = input('Enter the vector as i,j order in vector form: ');
P = inline(vectorize(f(1)),'x','y');
Q = inline(vectorize(f(2)),'x','y');
x = linspace(0, 1,10);y=x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V,1)
axis on
xlabel('x')
ylabel('y')
% check at [2*x 3*y]
syms x y z
F = input('Enter the vector as i,j and k order in vector form: ');
P = inline(vectorize(F(1)),'x','y','z');
Q = inline(vectorize(F(2)),'x','y','z');
R = inline(vectorize(F(3)),'x','y','z');
x = linspace(-1,1,5); y=x;z=x;
[X,Y,Z] = meshgrid(x,y,z);
U = P(X,Y,Z);
V = Q(X,Y,Z);
W = R(X,Y,Z);
quiver3(X,Y,Z,U,V,Z,1.5);
axis on
xlabel('x')
ylabel('y')
zlabel('z')
% check at [x y z]
