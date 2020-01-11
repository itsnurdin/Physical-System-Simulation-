awal=str2num(get(data1,'string'));
akhir=str2num(get(data2,'string'));
interval=str2num(get(data3,'string'));
x=[awal:interval:akhir];

pilihan=get(popup1,'value');

switch pilihan
    
    case 1
        y=sin(x*pi/180);
        set(win,'CurrentAxes',grafik1);
        plot(x,y,'*r');
        
    case 2
        y=cos(x*pi/180);
        set(win,'CurrentAxes',grafik1);
        plot(x,y,'+r');
       
    case 3
        y1=sin(x*pi/180);
        y2=cos(x*pi/180);
        set(win,'CurrentAxes',grafik1);
        plot(x,y1,'*r');
        hold on;
        plot(x,y2,'+r');
        hold off;
end;

set(grafik1, ...
    'xgrid','on', ...
    'ygrid','on', ...
    'xcolor',[.4 0 .15],...
    'ycolor',[.4 0 .15],...
    'fontsize',8, ...
    'color', [1 1 1]);

        
        