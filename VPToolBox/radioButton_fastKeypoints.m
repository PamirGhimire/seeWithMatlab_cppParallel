mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;

axes(mainhandle.axes2); hold off;

I = mainhandle.inputim;
%Find the corners.
fastKps = detectFASTFeatures(I);

%Display the results.
axes(mainhandle.axes2); hold off;
imshow(I, 'parent', mainhandle.axes2); hold on;
plot(fastKps);


handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);

figure(handles.figure1)