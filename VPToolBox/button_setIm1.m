% ask user to select im1
[filename, pathname] = uigetfile('*', 'Select Image 1');

% read im1 from the disk
im1 = imread([pathname, filename]);

% convert to grayscale if rgb
if size(im1, 3) > 1
    im1 = rgb2gray(im1);
end

handles.im1 = im1;

% Update handles structure
guidata(hObject, handles);