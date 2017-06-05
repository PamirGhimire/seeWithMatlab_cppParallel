mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


% sfilt_dx = fspecial('sobel');
% sfilt_dy = sfilt_dx';
% 
% sobelx = imfilter(mainhandle.inputim, sfilt_dx);
% sobely = imfilter(mainhandle.inputim, sfilt_dy);
% mainhandle.outputim = sqrt(double(sobelx.^2 + sobely.^2));
mainhandle.outputim = edge(mainhandle.inputim, 'sobel');

% add salt and pepper noise to input image in main window
%outputim = imresize(mainhandle.outputim, mainhandle.viewsize, 'bilinear');
outputim = mainhandle.outputim;
imshow(mat2gray(outputim), [], 'parent', mainhandle.axes2);

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

figure(handles.figure1)