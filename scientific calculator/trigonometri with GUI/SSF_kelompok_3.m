win=figure(...
    'color',[.7 .3 .2],...
    'menubar','figure',...
    'units','points',...
    'position',[130 50 800 400],...
    'resize','on',...
    'numbertitle','off',...
    'name','Praktikum SSF tugas 2',...
    'windowstyle','normal');

Frame1=uicontrol('parent',win,...
    'units','points',...
    'position',[0 350 800 300],...
    'Backgroundcolor',[.5 .4 .3],...
    'style','frame');

judul=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[65 365 700 20],...
    'Backgroundcolor',[.5 .4 .3],...
    'Style','text',...
    'string','SMART TRIGONOMETRI PLOTTING FUNCTION',...
    'fontname','arial',...
    'fontsize',20,...
    'fontweight','bold',...
    'foregroundcolor',[1 1 1]);

data1=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 280 200 25],...
    'Backgroundcolor',[1 1 1],...
    'Style','edit',...
    'string','',...
    'fontname','comic',...
    'fontsize',12,...
    'fontweight','normal',...
    'foregroundcolor',[0 0 0]);

data2=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 220 200 25],...
    'Backgroundcolor',[1 1 1],...
    'Style','edit',...
    'string','',...
    'fontname','comic',...
    'fontsize',12,...
    'fontweight','normal',...
    'foregroundcolor',[0 0 0]);

data3=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 160 200 25],...
    'Backgroundcolor',[1 1 1],...
    'Style','edit',...
    'string','',...
    'fontname','comic',...
    'fontsize',12,...
    'fontweight','normal',...
    'foregroundcolor',[0 0 0]);

label1=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 310 200 10],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','text',...
    'string','Sudut Awal',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','Bold',...
    'foregroundcolor',[1 1 1]);

label2=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 250 200 10],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','text',...
    'string','Sudut Akhir',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','Bold',...
    'foregroundcolor',[1 1 1]);

label3=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 190 200 10],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','text',...
    'string','Interval Sudut',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','Bold',...
    'foregroundcolor',[1 1 1]);

label4=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 130 200 10],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','text',...
    'string','Grafik',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','Bold',...
    'foregroundcolor',[1 1 1]);

popup1=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 110 200 10],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','popupmenu',...
    'string','Sin|Cos|Sin dan Cos',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','Bold',...
    'foregroundcolor',[1 1 1]);
    
grafik1=axes('Parent',win,...
    'Units','points',...
    'Position',[340 70 400 250],...
    'xgrid','on',...
    'ygrid','on',...
    'xcolor',[.4 0.5 .15],...
    'ycolor',[.4 0.1 .15],...
    'fontsize',8,...
    'color',[0 0 0]);

tomproses=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[50 60 95 18],...
    'Backgroundcolor',[1 1 1],...
    'foregroundcolor',[.7 .3 .2],...
    'Style','pushbutton',...
    'string','Proses',...
    'fontname','Garamond',...
    'fontsize',12,...
    'callback','trigono',...
    'fontweight','Bold');

tomtutup=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[155 60 95 18],...
    'Backgroundcolor',[1 1 1],...
    'foregroundcolor',[.7 .3 .2],...
    'Style','pushbutton',...
    'string','Tutup',...
    'fontname','Garamond',...
    'fontsize',12,...
    'string','Tutup',...
    'fontweight','Bold');

labelN=uicontrol('Parent',win,...
    'Units','points',...
    'Position',[270 7 300 20],...
    'Backgroundcolor',[.7 .3 .2],...
    'Style','text',...
    'string','Nurdiansyah - Departemen fisika -IPB',...
    'fontname','calibri',...
    'fontsize',11,...
    'fontweight','Bold',...
    'foregroundcolor',[1 .4 .5]);