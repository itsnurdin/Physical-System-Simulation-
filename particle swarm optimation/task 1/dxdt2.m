function xt = dxdt2(t,x)
format shortg
par=load('Parm_cari.txt');
a=par(1,1);  
b=par(1,2);  
g=9.81;
xt=zeros(2,1);
xt(1)=x(2);
xt(2)=(-b/a)*x(2)-g