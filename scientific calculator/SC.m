close;
clear all;
clc;

win1=figure(...
    'units','points',...
    'position',[330 160 205 300],...
    'color', [0.9 0.5 0.5],...
    'menubar','figure',...
    'resize','on',...
    'numbertitle','off',...
    'name','Scientific Calculator');
frame=uicontrol('parent',win1,...
    'units','points',...
    'position',[0 0 600 50],...
    'backgroundcolor',[0 0 0],...
    'style','Frame');
label=uicontrol('parent',win1,...
    'units','points',...
    'position',[25 270 155 19],...
    'backgroundcolor',[.9 .9 .9],...
    'style','Text',...
    'string','SCIENTIFIC CALCULATOR',...
    'fontname','cambria',...
    'fontsize',13,...
    'foregroundcolor',[0 0 0]);
ket=uicontrol('parent',win1,...
    'units','points',...
    'position',[0 0 205 50],...
    'backgroundcolor',[0 0 0],...
    'style','Text',...
    'string','Keterangan: beberapa fungsi digunakan satu masukan di kolom INPUT 1',...',...
    'fontname','cambria',... 
    'fontsize',12,...
    'foregroundcolor',[1 .7 .4]);

label1=uicontrol('parent',win1,...
    'units','points',...
    'position',[10 240 50 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Text',...
    'string','Input 1',...
    'fontname','Calibri',...
    'fontsize',12,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);
label2=uicontrol('parent',win1,...
    'units','points',...
    'position',[75 240 50 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Text',...
    'string','Input 2',...
    'fontname','calibri',...
    'fontsize',12,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);
label3=uicontrol('parent',win1,...
    'units','points',...
    'position',[140 240 50 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Text',...
    'string','Result',...
    'fontname','Cambria',...
    'fontsize',13,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);

edit1=uicontrol('parent',win1,...
    'units','points',...
    'position',[10 197 50 40],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Edit',...
    'string',' ',...
    'fontname','Calibri',...
    'fontsize',14,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);
edit2=uicontrol('parent',win1,...
    'units','points',...
    'position',[75 197 50 40],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Edit',...
    'string','',...
    'fontname','Calibri',...
    'fontsize',14,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);
edit3=uicontrol('parent',win1,...
    'units','points',...
    'position',[140 197 50 40],...
    'backgroundcolor',[.8 .8 .9],...
    'style','Edit',...
    'string',' ',...
    'fontname','Calibri',...
    'fontsize',14,...
    'fontweight','bold',...
    'foregroundcolor',[0 0 0]);

tambah=uicontrol('parent',win1,...
    'units','points',...
    'position',[10 170 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'callback','sum2',...
    'string','+',...
    'fontname','Calibri',...
    'fontsize',14);...
minus=uicontrol('parent',win1,...
    'units','points',...
    'position',[45 170 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'callback','min2',...
    'string','-',...
    'fontname','Calibri',...
    'fontsize',14);

cross=uicontrol('parent',win1,...
    'units','points',...
    'position',[80 170 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'callback','kali2',...
    'string','x',...
    'fontname','Calibri',...
    'fontsize',12);

devide=uicontrol('parent',win1,...
    'units','points',...
    'position',[115 170 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'callback','devide2',...
    'string','/',...
    'fontname','Calibri',...
    'fontsize',14);

tsin=uicontrol('parent',win1,...
   'units','points',...
    'position',[10 150 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','sin',...
    'callback','sin2',...
    'fontname','Calibri',...
    'fontsize',14);
tcos=uicontrol('parent',win1,...
   'units','points',...
    'position',[45 150 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','cos',...
    'callback','cos2',...
    'fontname','Calibri',...
    'fontsize',14);
ttan=uicontrol('parent',win1,...
    'units','points',...
    'position',[80 150 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','tan',...
    'callback','tan2',...
    'fontname','Calibri',...
    'fontsize',14);
tatan=uicontrol('parent',win1,...
    'units','points',...
    'position',[80 130 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','tan-1',...
    'callback','atan2',...
    'fontname','Calibri',...
    'fontsize',13);
tacos=uicontrol('parent',win1,...
    'units','points',...
    'position',[45 130 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','cos-1',...
    'callback','acos2',...
    'fontname','Calibri',...
    'fontsize',13);
tasin=uicontrol('parent',win1,...
    'units','points',...
    'position',[10 130 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','sin-1',...
    'callback','asin2',...
    'fontname','Calibri',...
    'fontsize',13);
akar=uicontrol('parent',win1,...
    'units','points',...
    'position',[150 150 47 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','x^(1/2)',...
    'callback','root2',...
    'fontname','Calibri',...
    'fontsize',12);
akar_lain=uicontrol('parent',win1,...
    'units','points',...
    'position',[150 130 47 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','x^(1/y)',...
    'callback','root_lain',...
    'fontname','Calibri',...
    'fontsize',12);
kuadrat=uicontrol('parent',win1,...
    'units','points',...
    'position',[115 150 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','x^2',...
    'callback','kuadrat2',...
    'fontname','Calibri',...
    'fontsize',12);
pangkatlain=uicontrol('parent',win1,...
    'units','points',...
    'position',[115 130 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','x^y',...
    'callback','pangkat_lain',...
    'fontname','Calibri',...
    'fontsize',12);
satuper=uicontrol('parent',win1,...
    'units','points',...
    'position',[150 170 47 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','1/x',...
    'callback','seper',...
    'fontname','Calibri',...
    'fontsize',12);
logr=uicontrol('parent',win1,...
    'units','points',...
    'position',[10 110 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','log',...
    'callback','log_10',...
    'fontname','Calibri',...
    'fontsize',14);
lognat=uicontrol('parent',win1,...
    'units','points',...
    'position',[45 110 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','ln',...
    'fontsize',14,...
    'callback','log_natur',...
    'fontname','Calibri');
expon=uicontrol('parent',win1,...
    'units','points',...
    'position',[80 110 35 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'string','exp',...
   'callback','expo',...
    'fontname','Calibri',...
    'fontsize',14);
tutup=uicontrol('parent',win1,...
    'units','points',...
    'position',[115 110 82 20],...
    'backgroundcolor',[.8 .8 .9],...
    'style','pushbutton',...
    'callback','close',...
    'string','close',...
    'fontname','Calibri',...
    'fontsize',14);


