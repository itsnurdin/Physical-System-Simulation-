%cos
data1=str2num(get(edit1,'String'));
data2=str2num(get(edit2,'String'));
c=cosd(data1);
set(edit3,'String',num2str(c));