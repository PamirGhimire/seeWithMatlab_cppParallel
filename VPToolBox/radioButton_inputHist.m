mainhandle = handles.mainhandle;
axes(mainhandle.axes2); hold off;


figure(1), imhist(mainhandle.inputim);
title('histogram of input');

figure(handles.figure1)