clc
clearvars
syms x y z r t
F = [z x y] % vector field
S = [r*cos(t) r*sin(t) r^2*cos(t)*sin(t)]
R = subs(S,r,2)
Ft = subs(F,[x,y,z],R);
drt = diff(R,t);
Fdr = dot(Ft,drt);
LHS = int(Fdr,t,0,2*pi)
curlF = curl(F,[x,y,z])
ndS = simplify(cross(diff(S,r),diff(S,t)))
RHS = int(int(dot(curlF,ndS),r,0,2),t,0,2*pi)
