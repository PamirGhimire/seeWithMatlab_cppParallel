mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


figure(2), imhist(handles.outputim);
title('histogram of output');

figure(handles.figure1)