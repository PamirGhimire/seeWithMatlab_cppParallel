mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


gfilt = fspecial('gaussian', 5);
mainhandle.outputim = imfilter(mainhandle.inputim, gfilt);

% add salt and pepper noise to input image in main window
%outputim = imresize(mainhandle.outputim, mainhandle.viewsize, 'bilinear');
outputim = mainhandle.outputim;
imshow(mat2gray(outputim), [], 'parent', mainhandle.axes2);

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

figure(handles.figure1)