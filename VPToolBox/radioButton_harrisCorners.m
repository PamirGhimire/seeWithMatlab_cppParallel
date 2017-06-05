mainhandle = handles.mainhandle;

I = mainhandle.inputim;
%Find the corners.
corners = detectHarrisFeatures(I);

%Display the results.
axes(mainhandle.axes2); hold off;
imshow(I, 'parent', mainhandle.axes2); hold on;
plot(corners);


handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);
