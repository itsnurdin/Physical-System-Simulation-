%kali
data1=str2num(get(edit1,'String'));
data2=str2num(get(edit2,'String'));

c=data1*data2;

set(edit3,'String',num2str(c));