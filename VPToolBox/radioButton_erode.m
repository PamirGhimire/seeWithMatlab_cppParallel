mainhandle = handles.mainhandle;

sel = strel('sphere', 5);
mainhandle.outputim = imerode(mainhandle.inputim, sel);

% add salt and pepper noise to input image in main window
outputim = imresize(mainhandle.outputim, mainhandle.viewsize, 'bilinear');
imshow(mat2gray(outputim), [], 'parent', mainhandle.axes2);

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

