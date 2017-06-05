
displaySize = [500, 500];
%inputim = imresize(handles.inputim, displaySize, 'bilinear');

handles.axes2;
imshow(mat2gray(inputim), [], 'parent', handles.axes1);