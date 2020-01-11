function varargout = simulasigerakplanet(varargin)
% SIMULASIGERAKPLANET MATLAB code for simulasigerakplanet.fig
%      SIMULASIGERAKPLANET, by itself, creates a new SIMULASIGERAKPLANET or raises the existing
%      singleton*.
%
%      H = SIMULASIGERAKPLANET returns the handle to a new SIMULASIGERAKPLANET or the handle to
%      the existing singleton*.
%
%      SIMULASIGERAKPLANET('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMULASIGERAKPLANET.M with the given input arguments.
%
%      SIMULASIGERAKPLANET('Property','Value',...) creates a new SIMULASIGERAKPLANET or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before simulasigerakplanet_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to simulasigerakplanet_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help simulasigerakplanet

% Last Modified by GUIDE v2.5 11-Apr-2016 11:11:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @simulasigerakplanet_OpeningFcn, ...
                   'gui_OutputFcn',  @simulasigerakplanet_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before simulasigerakplanet is made visible.
function simulasigerakplanet_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to simulasigerakplanet (see VARARGIN)

% Choose default command line output for simulasigerakplanet
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes simulasigerakplanet wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = simulasigerakplanet_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_n_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n as text
%        str2double(get(hObject,'String')) returns contents of edit_n as a double


% --- Executes during object creation, after setting all properties.
function edit_n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_x0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x0 as text
%        str2double(get(hObject,'String')) returns contents of edit_x0 as a double


% --- Executes during object creation, after setting all properties.
function edit_x0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_y0_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y0 as text
%        str2double(get(hObject,'String')) returns contents of edit_y0 as a double


% --- Executes during object creation, after setting all properties.
function edit_y0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_dt_Callback(hObject, eventdata, handles)
% hObject    handle to edit_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_dt as text
%        str2double(get(hObject,'String')) returns contents of edit_dt as a double


% --- Executes during object creation, after setting all properties.
function edit_dt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Vx_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Vx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Vx as text
%        str2double(get(hObject,'String')) returns contents of edit_Vx as a double


% --- Executes during object creation, after setting all properties.
function edit_Vx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Vx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Vy_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Vy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Vy as text
%        str2double(get(hObject,'String')) returns contents of edit_Vy as a double


% --- Executes during object creation, after setting all properties.
function edit_Vy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Vy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu.
function popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu


% --- Executes during object creation, after setting all properties.
function popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.



if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonsgp.
function pushbuttonsgp_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonsgp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


simulasi=guidata(gcbo);

plot(simulasi.axes1,0,0,'oy','MarkerSize',30,'MarkerFaceColor','yellow');
axis([-2.5 2.5 -2.5 2.5]);
xlabel('x (AU)');
ylabel('y (AU)');
title('Grafik Posisi terhadap Waktu');
hold on;

n=str2num(get(simulasi.edit_n,'String'));
dt=str2num(get(simulasi.edit_dt,'String'));
t=0;
x=str2num(get(simulasi.edit_x0,'String'));
y=str2num(get(simulasi.edit_y0,'String'));
vx=str2num(get(simulasi.edit_Vx,'String'));
vy=str2num(get(simulasi.edit_Vy,'String'));

for step=1:n-1;
	R=sqrt(x^2+y^2);
	
	vx_new=vx-9*pi^2*x*dt/R^3;
	vy_new=vy-9*pi^2*y*dt/R^3;

	x_new=x+vx_new*dt;
	y_new=y+vy_new*dt;

	plot(simulasi.axes1,x_new,y_new,'-k');
	drawnow;

	vx=vx_new;
	vy=vy_new;

	x=x_new;
	y=y_new;

end;


% --- Executes on button press in pushbuttonktw.
function pushbuttonktw_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonktw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

simulasi=guidata(gcbo);

n=str2num(get(simulasi.edit_n,'String'));
dt=str2num(get(simulasi.edit_dt,'String'));
t=0;
x=str2num(get(simulasi.edit_x0,'String'));
y=str2num(get(simulasi.edit_y0,'String'));
vx=str2num(get(simulasi.edit_Vx,'String'));
vy=str2num(get(simulasi.edit_Vy,'String'));

for step=1:n-1;
	R=sqrt(x^2+y^2);
	
	vx_new=vx-9*pi^2*x*dt/R^3;
	vy_new=vy-9*pi^2*y*dt/R^3;

	x_new=x+vx_new*dt;
	y_new=y+vy_new*dt;

    t_new=t+dt;
    
	plot(simulasi.axes1,vx_new,t_new,'r-*',vy_new,t_new,'g-*');
    hold on;
    xlabel('v (AU/tahun)');
    ylabel('t (tahun)');
    title('Grafik Kecepatan terhadap Waktu');

	vx=vx_new;
	vy=vy_new;

	x=x_new;
	y=y_new;

    t=t_new;
end;


% --- Executes on button press in pushbuttonptw.



function pushbuttonptw_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonptw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
simulasi=guidata(gcbo);

n=str2num(get(simulasi.edit_n,'String'));
dt=str2num(get(simulasi.edit_dt,'String'));
t=0;
x=str2num(get(simulasi.edit_x0,'String'));
y=str2num(get(simulasi.edit_y0,'String'));
vx=str2num(get(simulasi.edit_Vx,'String'));
vy=str2num(get(simulasi.edit_Vy,'String'));

for step=1:n-1;
	R=sqrt(x^2+y^2);
	
	vx_new=vx-9*pi^2*x*dt/R^3;
	vy_new=vy-9*pi^2*y*dt/R^3;

	x_new=x+vx_new*dt;
	y_new=y+vy_new*dt;
    
    t_new=t+dt;

	plot(simulasi.axes1,x_new,t_new,'r-*',y_new,t_new,'g-*');
    hold on;
    xlabel('s (AU)');
    ylabel('t (tahun)');
    title('Grafik Posisi terhadap Waktu');

	vx=vx_new;
	vy=vy_new;

	x=x_new;
	y=y_new;
    
    t=t_new;

end;


% --- Executes on button press in pushbuttonrg.
function pushbuttonrg_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonrg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

simulasi=guidata(gcbo);
cla(simulasi.axes1,'reset');

% --- Executes on button press in pushbuttonri.
function pushbuttonri_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

simulasi=guidata(gcbo);
set(simulasi.edit_n,'string',' ');
set(simulasi.edit_x0,'string',' ');
set(simulasi.edit_y0,'string',' ');
set(simulasi.edit_dt,'string',' ');
set(simulasi.edit_Vx,'string',' ');
set(simulasi.edit_Vy,'string',' ');