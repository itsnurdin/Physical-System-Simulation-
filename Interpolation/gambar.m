%callback 6

cla(grafik,'reset');
image = imread('logo.jpg');
%[nama file, formatfile] = uigetfile('logo.PNG');
%image = imread([formatfile.namafile]);
%guidata(hObject,handles);
%axes(handles.grafik);
imshow(image);
