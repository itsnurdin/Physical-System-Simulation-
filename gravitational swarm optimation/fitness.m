function f_xy = fitness(X)
%f_xy = x^2 - 8*x - 19;
%y= A*x*exp(B*x)
 
A = X(1,1);
B = X(1,2);
Parm_cari = [A B];
save Parm_cari.txt Parm_cari -ASCII
%[x,y] = ode45(@uas,[0 1.8],[0.75 0]);
 
 
Eks_Data = load ('Data.txt');
%x= [0.1; 0.2; 0.4; 0.6; 0.9; 1.3; 1.5; 1.7; 1.8];
x=[0:0.1:2];
y= A.*x.*exp(B.*x);
%x= Eks_Data(:,1);
x_data = Eks_Data(:,1);
y_data = Eks_Data(:,2);
cek = [x y];
jj=1;
 
for ii=1:length(x)
    if x_data(jj)>=x(ii) && x_data(jj)<x(ii+1)
        x_sim(jj)= x(ii);
        y_sim(jj)= y(ii);
        jj=jj+1;
    if jj>length(y_data),break,end
    else
    end
end
cek = [x_sim' x_data y_sim' y_data]
Error = ((y_data-y_sim')).^2;
Sum_Error = sum(Error);
f_xy =Sum_Error
end

