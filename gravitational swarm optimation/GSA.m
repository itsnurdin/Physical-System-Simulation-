dim = 2; %Jumlah variable yang ingin dioptimasi
N = 5; %Jumlah agen/partikel
max_iter = 10; %Jumlah Iterasi
Rpower = 1; Rnorm = 2;
ElitistCheck = 1;
format shortg
 
Amin=1; Amax=5;%Nilai X minimum
Bmin=-5; Bmax=5;
A=Amin+rand(N,1)*(Amax-Amin); %mencari nilai tebakan A
B=Bmin+rand(N,1)*(Bmax-Bmin); %mencari nilai tebakan B
X=[A B]
 
%Inisialisasi Matriks yang akan digunakan
V=zeros(N,dim);
FIterasi=zeros(max_iter,1);
XbestIterasi=zeros(max_iter,dim);
f_xy = ones(1,N);
dist=[];
 
%Mencari Nilai Fitness, kemudian dimutlakkan
for iterasi=1:max_iter
    for j=1:N
        f_xy(j) = fitness(X(j,:));
    end
    f_xy = abs(f_xy);
    lihat = [X f_xy']
%Mencari Nilai Best
    if i <=1
        [Fbest L_Xbest] = min(f_xy);
        Xbest = X(L_Xbest,:);
    else
        for j=1:N
            if (f_xy(j) < Fbest);
                Fbest = f_xy(j);
                Xbest = X(j,:);
            end
        end
    end
    FIterasi(iterasi)=Fbest;
    XbestIterasi(iterasi,:)=Xbest;
    %dist=[dist; iterasi X']
%Mencari Nilai Worst    
    Fmax=max(f_xy); Fmin=min(f_xy); Fmean=mean(f_xy);
    [i N]=size(f_xy);
    
    %Menghitung m    
    if Fmax==Fmin
        M=ones(N,1);
    else
        best=Fmin;
        worst=Fmax;
        M=(f_xy-worst)./(best-worst);
    end
%Menghitung M    
    M=M./sum(M);
%Menghitung konstanta Gravitasi    
    alfa=20;G0=100;
    G=G0*exp(-alfa*iterasi/max_iter);
    
    [N,dim]=size(X);
    final_per=2;
%ini belum tau buat apa,     
    if ElitistCheck==1
        kbest=final_per+(1-iterasi/max_iter)*(100-final_per);
        kbest=round(N*kbest/100);
    else
        kbest=N;
    end
    kbest = kbest;
    M=M;
        [Ms ds]=sort(M,'descend');
        
    for i=1:N
        E(i,:)=zeros(1,dim);
        for ii=1:kbest
            j=ds(ii);
            if j~=i
                R=norm(X(i,:)-X(j,:),Rnorm);
            for k=1:dim
                E(i,k)=E(i,k)+rand*(M(j))*((X(j,k)-X(i,k))/(R^Rpower+eps));
            end
            end
        end
    end
%Menghitung percepatan    
    a=E.*G;
    
    [N,dim]=size(X);
    V=rand(N,dim).*V+a; %Menghitung kecepatan
    X=X+V %Update X untuk iterasi berikutnya
end
hasil = [XbestIterasi FIterasi]
plot(FIterasi)

