I1 = handles.im1;
I2 = handles.im2;

%Find the SURF features.
points1 = detectSURFFeatures(I1);
points2 = detectSURFFeatures(I2);

%Extract the features.
[f1,vpts1] = extractFeatures(I1,points1);
[f2,vpts2] = extractFeatures(I2,points2);

%Retrieve the locations of matched points.
indexPairs = matchFeatures(f1,f2) ;
matchedPoints1 = vpts1(indexPairs(:,1));
matchedPoints2 = vpts2(indexPairs(:,2));

%Display the matching points. The data still includes several outliers, 
%but you can see the effects of rotation and scaling on the display of 
%matched features.
axes(handles.axes1)
showMatchedFeatures(I1,I2,matchedPoints1,matchedPoints2, 'montage');
legend('matched points 1','matched points 2');
