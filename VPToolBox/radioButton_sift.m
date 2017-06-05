mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


I = mainhandle.inputim;
%Find the corners.
[image, descriptors, locs] = sift(I);

%Display the results.
axes(mainhandle.axes2); hold off;
imshow(I, 'parent', mainhandle.axes2); hold on;
scatter(locs(:,2), locs(:,1), 'g.');


handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

figure(handles.figure1)