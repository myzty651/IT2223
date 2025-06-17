%% Bubble Sort - Pseudo Code
%% Step 01 : Take an array of numbers
%% Step 02 : Repeat for all elements in the array
%%         -> Compare each pair of adjacent elements
%%         -> If the left element is greater than the right element
%%         -> Swap them
%% Step 03 : Continue this process until the entire array is sorted
%%         -> Largest elements will "bubble up" to the end in each pass
%% End

%% Array = [64, 34, 25, 12, 22, 11, 90];

array = [64, 34, 25, 12, 22, 11, 90];
n = length(array);
    for i=1 : n-1
        for j=1 : n-1
            if array(j) > array(j+1)
                temp = array(j);
                array(j) = array(j+1);
                array(j+1) = temp;
            end
        end
    end
disp("Sorted array : ");
disp(array);

