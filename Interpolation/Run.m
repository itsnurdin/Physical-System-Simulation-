%callback 3

set(win,'CurrentAxes',grafik);
a=plot(x,y,'or');
set(a,'LineWidth',2);
set(grafik,'color',[1 1 1],...
    'XGrid','on',...
    'YGrid','on',...
    'NextPlot','add');
set(win,'Userdata',dataku);

dataku=get(win,'Userdata');
x=dataku(:,1);
y=dataku(:,2);
xi =[ min(x) :.25:max(x)];

pilihan=get(menu_metode,'Value');
switch pilihan
    case 1
        yi = interp1(x,y,xi,'linear');
        set(win,'CurrentAxes',...
    grafik);
a=plot(x,y,'or');
set(a,'LineWidth',3);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yi,'-g');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','replace');
dataxy=[ xi' yi'];

title('Chirp Linear Interpolation');
set(grafik,'Userdata',dataxy);

    case 2
        yi = interp1(x,y,xi,'nearest');
        
        set(win,'CurrentAxes',...
    grafik);
a=plot(x,y,'or');
set(a,'LineWidth',3);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yi,'-g');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','replace');
dataxy=[ xi' yi'];
title('Chirp Neares t Neighbor Interpolation');
set(grafik,'Userdata',dataxy);

    case 3
        n=str2double(get(orde,'String'));
        const=polyfit(x,y,n);
        yi=polyval(const,xi);
        %yi = interp1(x,y,xi,'cubic');
        set(win,'CurrentAxes',...
    grafik);
a=plot(x,y,'or');
set(a,'LineWidth',3);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yi,'-g');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','replace');
dataxy=[ xi' yi'];
title('Chirp Polynomial Interpolation');

set(grafik,'Userdata',dataxy);
    case 4
        yi = interp1(x,y,xi,'spline');
        set(win,'CurrentAxes',...
    grafik);
a=plot(x,y,'or');
set(a,'LineWidth',3);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yi,'-g');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','replace');
dataxy=[ xi' yi'];
title('Chirp Cubic Spline Interpolation');

set(grafik,'Userdata',dataxy);
    case 5
        yi= interp1(x,y,xi,'spline')
        yj= interp1(x,y,xi,'linear');
        yk= interp1(x,y,xi,'nearest'); 
       % yl= interp1(x,y,xi,'cubic');
        n=str2double(get(orde,'String'));
        const=polyfit(x,y,n);
        yl=polyval(const,xi);
        set(win,'CurrentAxes',...
    grafik);
a=plot(x,y,'or');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yi,'-b');
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','replace');
dataxy=[ xi' yi'];          
a=plot(xi,yi,'-r');
hold on
set(a,'LineWidth',2);
set(grafik,'Color',[1 0.96 0.9],...
                   'Xgrid','on',...
                   'Ygrid','on',...
                   'NextPlot','add');
a=plot(xi,yl,'-b');
hold on
set(a,'LineWidth',2);

a=plot(xi,yj,'-g');
hold on
set(a,'LineWidth',2);

a=plot(xi,yk,'-c');
hold on
set(a,'LineWidth',2);

set(grafik,'Userdata',dataxy);
title('All Analytical Interpolation');
end;


