mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


dx = fspecial('sobel');
dy = dx';

Ixx = imfilter(imfilter(mainhandle.inputim, dx), dx);
Iyy = imfilter(imfilter(mainhandle.inputim, dy), dy);
mainhandle.outputim = Ixx + Iyy;

% add salt and pepper noise to input image in main window
%outputim = imresize(mainhandle.outputim, mainhandle.viewsize, 'bilinear');
outputim = mainhandle.outputim;
imshow(mat2gray(outputim), [], 'parent', mainhandle.axes2);

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

figure(handles.figure1)

