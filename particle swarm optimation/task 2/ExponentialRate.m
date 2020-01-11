function [x,y] = ExponentialRate(x)
format shortg
par = load('Parameter_Cari.txt');
a = par(:,1);
b = par(:,2);
y = a.*x.*exp(b.*x);
end