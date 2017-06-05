mainhandle = handles.mainhandle;

% find edges in the input image
BW = edge(mainhandle.inputim, 'canny');

% hough transform using the binary image
[H, T, R] = hough(BW);
P  = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));

% find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
axes(mainhandle.axes2); hold off;
imshow(mainhandle.inputim, [], 'parent', mainhandle.axes2); 
hold on

max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green', 'parent', mainhandle.axes2);
   
   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow', 'parent', mainhandle.axes2);
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red', 'parent', mainhandle.axes2);
   
   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','cyan', 'parent', mainhandle.axes2);

handles.outputim = getimage(mainhandle.axes2);
% Update handles structure
guidata(hObject, handles);

