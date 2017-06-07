function varargout = multiViewProcessesPane(varargin)
% MULTIVIEWPROCESSESPANE MATLAB code for multiViewProcessesPane.fig
%      MULTIVIEWPROCESSESPANE, by itself, creates a new MULTIVIEWPROCESSESPANE or raises the existing
%      singleton*.
%
%      H = MULTIVIEWPROCESSESPANE returns the handle to a new MULTIVIEWPROCESSESPANE or the handle to
%      the existing singleton*.
%
%      MULTIVIEWPROCESSESPANE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTIVIEWPROCESSESPANE.M with the given input arguments.
%
%      MULTIVIEWPROCESSESPANE('Property','Value',...) creates a new MULTIVIEWPROCESSESPANE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multiViewProcessesPane_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multiViewProcessesPane_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multiViewProcessesPane

% Last Modified by GUIDE v2.5 06-Jun-2017 23:44:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multiViewProcessesPane_OpeningFcn, ...
                   'gui_OutputFcn',  @multiViewProcessesPane_OutputFcn, ...
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


% --- Executes just before multiViewProcessesPane is made visible.
function multiViewProcessesPane_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multiViewProcessesPane (see VARARGIN)

% Choose default command line output for multiViewProcessesPane
handles.output = hObject;

% handle of main window
m = varargin{1};
handles.mainhandle = m{1};

handles.outputim = rand(500, 500);

% im1 and im2 for point matching
handles.im1 = zeros(500, 500);
handles.im2 = zeros(500, 500);

axes(handles.axes1); axis off;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multiViewProcessesPane wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multiViewProcessesPane_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% SET IMAGE 1 BUTTON
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_setIm1;

% SET IMAGE 2 BUTTON
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_setIm2;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2

% POINT MATCHING USING SURF
% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
radioButton_surfMatching;

% POINT MATCHING USING SIFT
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
radioButton_siftMatching;

% Fundamental matrix button
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_funmatSurf;

% CAMERA CALIBRATOR APP
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_cameracalib;