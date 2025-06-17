%% Insertion Sort - Pseudo Code
%% Step 01 : Take an array with some numbers
%% Step 02 : Start from the second element in the array
%% Step 03 : Compare this element (key) with the element before
%% Step 04 : While the previous elements are greater than the key
%%         -> Move the previous element one position forward
%% Step 05 : Insert the key at its correct position
%% Step 06 : Repeat steps 3 to 5 for all elements in the array
%% End

array = [5, 4, 10, 1, 6, 2];
n = length(array);

for i = 2:n
    key = array(i);
    j = i - 1;
    
    % Move elements of arr(1..i-1), that are greater than key,
    % to one position ahead of their current position
    while j >= 1 && array(j) > key
        array(j + 1) = array(j);
        j = j - 1;
    end
    array(j + 1) = key;
end

disp(array);  % Display the sorted array
