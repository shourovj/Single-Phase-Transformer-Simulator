function varargout = trial(varargin)
% TRIAL MATLAB code for trial.fig
%      TRIAL, by itself, creates a new TRIAL or raises the existing
%      singleton*.
%
%      H = TRIAL returns the handle to a new TRIAL or the handle to
%      the existing singleton*.
%
%      TRIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRIAL.M with the given input arguments.
%
%      TRIAL('Property','Value',...) creates a new TRIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trial

% Last Modified by GUIDE v2.5 24-Jan-2022 18:32:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trial_OpeningFcn, ...
                   'gui_OutputFcn',  @trial_OutputFcn, ...
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


% --- Executes just before trial is made visible.
function trial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trial (see VARARGIN)

% Choose default command line output for trial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in sc.
function sc_Callback(hObject, eventdata, handles)
% hObject    handle to sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sc


% --- Executes during object creation, after setting all properties.
function sc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in oc.
function oc_Callback(hObject, eventdata, handles)
% hObject    handle to oc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns oc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from oc


% --- Executes during object creation, after setting all properties.
function oc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to oc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function voc_Callback(hObject, eventdata, handles)
% hObject    handle to voc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voc as text
%        str2double(get(hObject,'String')) returns contents of voc as a double
Voc=str2num(get(handles.voc,'string'))

% --- Executes during object creation, after setting all properties.
function voc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ioc_Callback(hObject, eventdata, handles)
% hObject    handle to ioc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ioc as text
%        str2double(get(hObject,'String')) returns contents of ioc as a double
Ioc=str2num(get(handles.ioc,'string'))


% --- Executes during object creation, after setting all properties.
function ioc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ioc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function isc_Callback(hObject, eventdata, handles)
% hObject    handle to isc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of isc as text
%        str2double(get(hObject,'String')) returns contents of isc as a double
Isc=str2num(get(handles.isc,'string'))

% --- Executes during object creation, after setting all properties.
function isc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vsc_Callback(hObject, eventdata, handles)
% hObject    handle to vsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vsc as text
%        str2double(get(hObject,'String')) returns contents of vsc as a double
Vsc=str2num(get(handles.vsc,'string'))

% --- Executes during object creation, after setting all properties.
function vsc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wsc_Callback(hObject, eventdata, handles)
% hObject    handle to wsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wsc as text
%        str2double(get(hObject,'String')) returns contents of wsc as a double
Wsc=str2num(get(handles.wsc,'string'))

% --- Executes during object creation, after setting all properties.
function wsc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function woc_Callback(hObject, eventdata, handles)
% hObject    handle to woc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of woc as text
%        str2double(get(hObject,'String')) returns contents of woc as a double
Woc=str2num(get(handles.woc,'string'))

% --- Executes during object creation, after setting all properties.
function woc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to woc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

b=str2num(get(handles.turns,'string'))
% short circuit data
Wsc=str2num(get(handles.wsc,'string'));
Isc=str2num(get(handles.isc,'string'));
Vsc=str2num(get(handles.vsc,'string'));
% open circuit data
Voc=str2num(get(handles.voc,'string'));
Ioc=str2num(get(handles.ioc,'string'));
Woc=str2num(get(handles.woc,'string'));

%short circuit calcl
thetasc=acos(Wsc/(Vsc*Isc));
zsc=Vsc/Isc;
[Req,Xeq]=pol2cart(thetasc,zsc);

thetaoc=acos(Woc/(Voc*Ioc));
zoc=Voc/Ioc;
[R,X]=pol2cart(-thetaoc,1/zoc);
Rc=abs(1/R);
Xm=abs(1/X);

sideval_sc=get(handles.sc,'value');
switch sideval_sc
    case 2
        fprintf('Short ckt test was done in High voltage side')
        Reqs=Req/b^2
        Xeqs=Xeq/b^2
    case 3
        fprintf('Short ckt test was done in low voltage side')
        Reqs=Req
        Xeqs=Xeq
    otherwise
        fprintf('Select High or Low voltage')
end
sideval_oc=get(handles.oc,'value');
switch sideval_oc
    case 2
        fprintf('Short ckt test was done in High voltage side')
        Rcs=Rc/b^2
        Xms=Xm/b^2
    case 3
        fprintf('Short ckt test was done in low voltage side')
        Rcs=Rc
        Xms=Xm
    otherwise
        fprintf('Select High or Low voltage')
end
fprintf('Equivalent ckt reffered to the secondary side\n')
disp(['Reqs =',num2str(Reqs)])
disp(['Xeqs =',num2str(Xeqs)])
disp(['Rcs =',num2str(Rcs)])
disp(['Xms =',num2str(Xms)])

%Equivalent ckt reffered to the secondary side

fprintf('Equivalent ckt reffered to the secondary side\n')
Reqp=Reqs*b^2
Xeqp=Xeqs*b^2
Rcp=Rcs*b^2
Xmp=Xms*b^2

set(handles.reqs,'string',Reqs)
set(handles.xeqs,'string',Xeqs)
set(handles.rcs,'string',Rcs)
set(handles.xms,'string',Xms)

set(handles.reqp,'string',Reqp)
set(handles.xeqp,'string',Xeqp)
set(handles.rcp,'string',Rcp)
set(handles.xmp,'string',Xmp)

global Vps 
%Calculation for pf
pf=str2num(get(handles.pf,'string')) %getiing the pf value
S=1000*str2num(get(handles.rap,'string')) %getting the rated apparent power
Vp=str2num(get(handles.rpv,'string'))%getting the rated primary voltage
global Vs
Vs=str2num(get(handles.rsv,'string'))%getting the rated secondary voltage

flag=get(handles.L,'value') %for identefying lagging or leading
switch flag
    case 2 
        fprintf('Lagging')
    case 3
        fprintf('Leading')
    otherwise
        fprintf('Select lagging or leading')
end

%load pf angle
global pf_angle
if(flag==2) %lagging
    pf_angle=acos(pf)
else
    pf_angle=-acos(pf)
end

% Always assume secondary er voltage er angle 0

global Is
Is=((S)/Vs)*exp(-j*pf_angle) %if flag==2 taile lagging and current er angle neg


% determining Vps at this pf 
Vps=Vs+Reqs*Is+Is*j*Xeqs

VR=((abs(Vps)-Vs)/Vs)*100

Copper_loss=(abs(Is))^2*Reqs
Core_loss=((abs(Vps))^2)/Rcs

Pw=S*cos(pf_angle)
Efficiency=(Pw)/(Copper_loss+Core_loss+Pw)*100

set(handles.vr,'string',VR)
set(handles.cu,'string',Copper_loss)
set(handles.core,'string',Core_loss)
set(handles.eta,'string',Efficiency)

% figure
% phasediagram(abs(Vs),0)
% phasediagram(abs(Is),0-pf_angle)

function turns_Callback(hObject, eventdata, handles)
% hObject    handle to turns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of turns as text
%        str2double(get(hObject,'String')) returns contents of turns as a double


% --- Executes during object creation, after setting all properties.
function turns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to turns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pf_Callback(hObject, eventdata, handles)
% hObject    handle to pf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pf as text
%        str2double(get(hObject,'String')) returns contents of pf as a double


% --- Executes during object creation, after setting all properties.
function pf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in L.
function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns L contents as cell array
%        contents{get(hObject,'Value')} returns selected item from L


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rap_Callback(hObject, eventdata, handles)
% hObject    handle to rap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rap as text
%        str2double(get(hObject,'String')) returns contents of rap as a double


% --- Executes during object creation, after setting all properties.
function rap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rpv_Callback(hObject, eventdata, handles)
% hObject    handle to rpv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rpv as text
%        str2double(get(hObject,'String')) returns contents of rpv as a double


% --- Executes during object creation, after setting all properties.
function rpv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rpv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rsv_Callback(hObject, eventdata, handles)
% hObject    handle to rsv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rsv as text
%        str2double(get(hObject,'String')) returns contents of rsv as a double


% --- Executes during object creation, after setting all properties.
function rsv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text49_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Vs Is pf_angle Vps 
figure
phasediagram(abs(Vs),0,'r','Vs')

phasediagram(abs(Vps),angle(Vps),'g','Vps')
phasediagram(abs(Is),0-pf_angle,'b','Is')
