clc
f = input('Enter the function:');
i = input('Enter[a b]');
% use ezplot to plot syms variable
df = diff(f,x);
dfc = subs(df,x,c);
rhs = (subs(f,x,i(2)) - subs(f,x,i(1)))/(i(2) -i(1));
c =double(solve(dfc-rhs));
index = find(c>i(1) && c<i(2));
c = c(index)
for i=1:numel(c)
    disp(['The value of c:', num2str(c(i))]);
    fc = double(subs(f,c(i)));
    m = double()
    b = double(subs(f,c(i)) - subs(df,c(i)*c(i)));
