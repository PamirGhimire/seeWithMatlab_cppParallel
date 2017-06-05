mainhandle = handles.mainhandle;
warning off;
A = mainhandle.inputim;

% Define the radius range.
Rmin = 3;
Rmax = 30;

% find circles
[centers, radii, metric] = imfindcircles(A,[Rmin Rmax], 'objectPolarity', 'bright');
[centersDark, radiiDark] = imfindcircles(A,[Rmin Rmax],'ObjectPolarity','dark');


%Draw circle perimeters over the original image.
axes(mainhandle.axes2); hold off;
imshow(mainhandle.inputim, 'parent', mainhandle.axes2);
hold on;

viscircles(centers, radii,'EdgeColor','b');
viscircles(centersDark, radiiDark,'LineStyle','--');

handles.outputim = mainhandle.outputim;
% Update handles structure
guidata(hObject, handles);
