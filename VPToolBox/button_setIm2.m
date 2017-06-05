% ask user to select im1
[filename, pathname] = uigetfile('*', 'Select Image 1');

% read im1 from the disk
im2 = imread([pathname, filename]);

% convert to grayscale if rgb
if size(im2, 3) > 1
    im2 = rgb2gray(im2);
end

handles.im2 = double(im2);

% Update handles structure
guidata(hObject, handles);