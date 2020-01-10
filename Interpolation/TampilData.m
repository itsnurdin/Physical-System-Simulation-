%callback 4

set(win,'CurrentAxes',grafik);
a=plot(x,y,'or');
set(a,'LineWidth',2);
set(grafik,'color',[1 1 1],...
    'XGrid','on',...
    'YGrid','on',...
    'NextPlot','add');
xlabel('Input x');
ylabel('Output y');
title('MotorCycleData.txt');

set(win,'Userdata',dataku);