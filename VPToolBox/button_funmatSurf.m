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

[fLMedS, inliers] = estimateFundamentalMatrix(matchedPoints1,matchedPoints2,'NumTrials',2000);

axes(handles.axes1)
showMatchedFeatures(I1, I2, matchedPoints1(inliers,:),matchedPoints2(inliers,:),'montage','PlotOptions',{'ro','go','y--'});
title('Point matches after outliers were removed');

estimated_fundamental_matrix = fLMedS
