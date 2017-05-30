try
    % get image location
    [file, folder] = uigetfile('*', 'Select Image to Load')

    % read the image into handles structure
    inputim = imread([folder, file]);
    
    if size(inputim, 3) > 1
        inputim = rgb2gray(inputim);
    end
    
    handles.inputim = inputim;
    guidata(hObject, handles);

    displayInputim
    
catch
    warning('Error in loading image');
end
