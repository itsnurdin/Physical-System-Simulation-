function f_xy = Fitting_experiment(X)
a = X(1,1);
b = X(1,2);
Parm_cari = [a b];
save Parm_cari.txt Parm_cari -ASCII
[x,y] = ode45(@dxdt2,[0:2:12],[0,600]);
Eks_Data = load ('Data_Eks.txt');
x_data = Eks_Data(:,1);
y_data = Eks_Data(:,2);
cek = [x,y];
jj=1;

for ii=1:length(x)
    if x_data(jj)>=x(ii)  && x_data(jj)<x(ii+1) 
        x_sim(jj)= x(ii);
        y_sim(jj)= y(ii);
        jj=jj+1;
    if jj>length(y_data),break, end
    else        
    end   
end
cek = [x_sim' x_data y_sim' y_data]
plot(x_sim',y_sim',x_data,y_data)
Error = corr(y_data,y_sim');
Sum_Error = sum(Error);
f_xy =Sum_Error;
end
