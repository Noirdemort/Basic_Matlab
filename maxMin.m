clc
clearvars
syms x
f = input('Enter the funtion f(x)');
i = input('Enter the interval');
df = diff(f,x);
ddf = diff(df,x);
f = inline(vectorize(f));
df = inline(vectorize(df));
ddf = inline(vectorize(ddf));
range = linspace(i(1),i(2),100);
plot(range, f(range),'*r','LineWidth',2);
legstr = {'Function Plot'};
hold on
guesses = linspace(i(1), i(2), 5);
root = zeros(size(guesses));
for i=1:numel(guesses)
    root(i) = f(zero(df,guesses(i)));
end
root = root(i(1)<= root & root<=i(2));
root = unique(round(root,4));
plot(root, f(root), 'go', 'MarkerSize',10);
legstr = [legstr, {'Critical Points'}];

disp(['critical Points of f(x) are:', num2str(root)]);
maxp = root(ddf(root)<0);
if(numel(maxp)~=0)
    disp(['Local maxima occurs at:', num2str(maxp)])
end
minp = root(ddf(root)>0);
if(numel(minp)~=0)
    disp(['Local minima occurs at:', num2str(minp)])
end
fval = f(root);
if(numel(maxp)~=0)
    gmax = root(fval == max(fval));
    disp(['Global maxima occurs of f(x) occurs at:', num2str(gmax), 'and its maximum value is:', num2str(max(fval))])
    plot(gmax, f(gmax),'m+','MarkerSize',10);
    legstr = [legstr, {'Global Maximum'}];
end

if(numel(minp)~=0)
    gmin = root(fval==min(fval));
    disp(['Global minimum occurs of f(x) occurs at:' num2str(gmin), 'and its minimum value is:', num2str(min(fval))])
    plot(gmin, f(gmin),'m*','MarkerSize',10);
    legstr = [legstr,{'Global Minimum'}];
end

