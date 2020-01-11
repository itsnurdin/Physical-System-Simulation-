function f_xy = Fitting_Exponential(X)
a = X(1,1);
b = X(1,2);
Parameter_cari = [a b];
save Parameter_cari.txt Parameter_cari -ASCII
[x,y] = ExponentialRate([0:0.1:2]);
Eks_Data = load ('Eksperimen_Data.txt');
x_data = Eks_Data(:,1);
y_data = Eks_Data(:,2);
cekkkk = [x y];
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
cekkkk = [x_sim' x_data y_sim' y_data]
Error = ((y_data-y_sim')).^2;
Sum_Error = sum(Error);
f_xy =Sum_Error;
end