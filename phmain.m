function varargout = phmain(varargin)
% PHMAIN M-file for phmain.fig
%      PHMAIN, by itself, creates a new PHMAIN or raises the existing
%      singleton*.
%
%      H = PHMAIN returns the handle to a new PHMAIN or the handle to
%      the existing singleton*.
%
%      PHMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PHMAIN.M with the given input arguments.
%
%      PHMAIN('Property','Value',...) creates a new PHMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before phmain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to phmain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help phmain

% Last Modified by GUIDE v2.5 08-Apr-2014 01:47:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @phmain_OpeningFcn, ...
                   'gui_OutputFcn',  @phmain_OutputFcn, ...
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


% --- Executes just before phmain is made visible.
function phmain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to phmain (see VARARGIN)

% Choose default command line output for phmain
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes phmain wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = phmain_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[b f]=uigetfile('*','Specify an Image');
c=[f b];
set(handles.edit5,'String',c);
axes(handles.axes1);
imshow(c);


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(hObject,'Value');
b=get(handles.slider2,'Value');
c=get(handles.slider3,'Value');
I=getimage(handles.axes1);
x=I(:,:,1);
y=I(:,:,2);
z=I(:,:,3);
d=a*x;
e=b*y;
f=c*z;
I(:,:,1)=d;
I(:,:,2)=e;
I(:,:,3)=f;
imagesc(I)
set(handles.text5,'String',num2str(a));
set(handles.text6,'String',num2str(b));
set(handles.text7,'String',num2str(c));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=get(hObject,'Value');
a=get(handles.slider1,'Value');
c=get(handles.slider3,'Value');
I=getimage(handles.axes1);
x=I(:,:,1);
y=I(:,:,2);
z=I(:,:,3);
d=a*x;
e=b*y;
f=c*z;
I(:,:,1)=d;
I(:,:,2)=e;
I(:,:,3)=f;
imagesc(I)
set(handles.text5,'String',num2str(a));
set(handles.text6,'String',num2str(b));
set(handles.text7,'String',num2str(c));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=get(hObject,'Value');
a=get(handles.slider1,'Value');
b=get(handles.slider2,'Value');
I=getimage(handles.axes1);
x=I(:,:,1);
y=I(:,:,2);
z=I(:,:,3);
d=a*x;
e=b*y;
f=c*z;
I(:,:,1)=d;
I(:,:,2)=e;
I(:,:,3)=f;
imagesc(I)
set(handles.text5,'String',num2str(a));
set(handles.text6,'String',num2str(b));
set(handles.text7,'String',num2str(c));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(hObject,'Value');
I=getimage(handles.axes1);
G=rgb2gray(I);
x=G(:,:,1);
y=G(:,:,2);
z=G(:,:,3);
d=a*x;
e=a*y;
f=a*z;
G(:,:,1)=d;
G(:,:,2)=e;
G(:,:,3)=f;
imshow(G)
set(handles.text8,'String',num2str(a));

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit1,'String'));
c=str2double(get(handles.edit3,'String'));
I=getimage(handles.axes1);
set(handles.text5,'String','PROCESSING');

n=6;
set(handles.text27,'String','OUTPUT FOR RED CHANNEL');
imshow('1red_channel.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT FOR FILTERED IMAGE');
imshow('2filtered.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER CLOSING');
imshow('3afterClosing.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER FRST');
imshow('4fastradial.png');
tic;pause(10);toc;

set(handles.text27,'String','OUTPUT AFTER NON MAXIMUM SUPRESSION');
imshow('5nms.png');
tic;pause(10);toc;

set(handles.text27,'String','OUTPUT AFTER OTSU THRESHOLD');
imshow('6BW.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER BITAND');
imshow('7bitand.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER DILATION');
imshow('8dilated.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER INVERSION');
imshow('9inverted.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER BACKGROUND MARKER');
imshow('background_mark.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER Watershed Algorithm');
imshow('11watershed.png');
tic;pause(n);toc;

set(handles.text27,'String','OUTPUT AFTER POST PROCESSING');
imshow('12post.png');
tic;pause(10);toc;

F=imread('final.png');
d=bwconncomp(F);

set(handles.text27,'String','FINAL OUTPUT');
imshow('final.png');
tic;pause(n);toc;

set(handles.text5,'String',num2str(d.NumObjects));


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=getimage(handles.axes1);
[m n o]=size(I);

if(o==3)
I=rgb2gray(I);
level=graythresh(I);
I=im2bw(I,level);
end
if (o==1)
level=graythresh(I);
I=im2bw(I,level);
end        
imshow(I);

% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.edit5,'String');
d=0;
set(handles.text5,'String',num2str(d));
imshow(a);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=getimage(handles.axes1);
I=rgb2gray(I);
imshow(I);
