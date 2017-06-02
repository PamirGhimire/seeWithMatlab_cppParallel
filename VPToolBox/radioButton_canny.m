mainhandle = handles.mainhandle;

mainhandle.outputim = edge(mainhandle.inputim, 'canny');

% add salt and pepper noise to input image in main window
outputim = imresize(mainhandle.outputim, mainhandle.viewsize, 'bilinear');
imshow(mat2gray(outputim), [], 'parent', mainhandle.axes2);

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

