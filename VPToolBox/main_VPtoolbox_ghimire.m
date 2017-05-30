function varargout = main_VPtoolbox_ghimire(varargin)
% MAIN_VPTOOLBOX_GHIMIRE MATLAB code for main_VPtoolbox_ghimire.fig
%      MAIN_VPTOOLBOX_GHIMIRE, by itself, creates a new MAIN_VPTOOLBOX_GHIMIRE or raises the existing
%      singleton*.
%
%      H = MAIN_VPTOOLBOX_GHIMIRE returns the handle to a new MAIN_VPTOOLBOX_GHIMIRE or the handle to
%      the existing singleton*.
%
%      MAIN_VPTOOLBOX_GHIMIRE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN_VPTOOLBOX_GHIMIRE.M with the given input arguments.
%
%      MAIN_VPTOOLBOX_GHIMIRE('Property','Value',...) creates a new MAIN_VPTOOLBOX_GHIMIRE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_VPtoolbox_ghimire_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_VPtoolbox_ghimire_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main_VPtoolbox_ghimire

% Last Modified by GUIDE v2.5 30-May-2017 12:00:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_VPtoolbox_ghimire_OpeningFcn, ...
                   'gui_OutputFcn',  @main_VPtoolbox_ghimire_OutputFcn, ...
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


% --- Executes just before main_VPtoolbox_ghimire is made visible.
function main_VPtoolbox_ghimire_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main_VPtoolbox_ghimire (see VARARGIN)
clc;
% Choose default command line output for main_VPtoolbox_ghimire
handles.output = hObject;

% input image
handles.inputim = ones(500, 500);

% output image
handles.outputim = ones(500, 500);

handles.viewsize = [500, 500];

imshow(handles.inputim, [], 'parent', handles.axes1); axis off;
imshow(handles.inputim, [], 'parent', handles.axes2); axis off;


% Update handles structure
guidata(hObject, handles);

axis off;



% UIWAIT makes main_VPtoolbox_ghimire wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_VPtoolbox_ghimire_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% ONE VIEW PROCESSES
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ovp = oneViewProcessPane({handles});

% LOAD IMAGE
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button_loadImage;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
