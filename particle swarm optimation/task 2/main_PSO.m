    clear;clc
    dim = 2;
    N = 8 ;
    max_iter = 100;
    format shortg

    amin = 9.788708; amax = 9.7887085;
    bmin = -2.5429225; bmax = -2.5429215;
    a = amin + rand(N,1)*(amax-amin);
    b = bmin + rand(N,1)*(bmax-bmin);
    X = [a b];
    V = zeros(N,dim);
    FIterasi=zeros(max_iter,1);
    XbestIterasi=zeros(max_iter,dim);
    f_x = ones(1,N);

    for i=1:max_iter
                       
        for j=1:N 
            f_x(j) = Fitting_Exponential(X(j,:));
        end

        f_x = abs(f_x);

        if i <=1
            FPbest  = f_x';
            Pbest = X;        
        else
            for j=1:N
                if (f_x(j) > FPbest(j));
                    FPbest(j) = f_x(j); 
                    Pbest(j,:) = X(j,:);
                end            
            end
        end
 
        [FGbest,baris] = max(FPbest);
        Gbest = Pbest(baris,:); 
        FIterasi(i)=FGbest;
        XbestIterasi(i,:)= Gbest;
             
        c1=.5;c2=.5;
        rand1 = rand(N,1); rand2 = rand(N,1);
        for j=1:N
            V(j,:) = V(j) + c1*rand1(j).*(Pbest(j,:)-X(j,:)) + c2*rand2(j).*(Gbest-X(j,:));
            X(j,:) = X(j,:) + V(j,:);
        end       
        
    end
    
    cekHasil = [FIterasi XbestIterasi]
    save Hasil.txt cekHasil -ASCII

    plot(FIterasi)