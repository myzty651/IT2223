function QuickSort()
    % Define the array to sort
    arr = [38, 27, 43, 3, 9, 82, 10];
    fprintf('Original array:\n');
    disp(arr);

    % Call the in-place quicksort function
    arr = quickSortInPlace(arr, 1, length(arr));

    fprintf('Sorted array:\n');
    disp(arr);
end

function arr = quickSortInPlace(arr, low, high)
    if low < high
        [arr, pivotIndex] = partition(arr, low, high);
        arr = quickSortInPlace(arr, low, pivotIndex - 1);
        arr = quickSortInPlace(arr, pivotIndex + 1, high);
    end
end

function [arr, pivotIndex] = partition(arr, low, high)
    pivot = arr(high); % Choose pivot as last element
    i = low - 1;
    for j = low:high-1
        if arr(j) <= pivot
            i = i + 1;
            % Swap arr(i) and arr(j)
            temp = arr(i);
            arr(i) = arr(j);
            arr(j) = temp;
        end
    end
    % Swap pivot to the correct position
    temp = arr(i + 1);
    arr(i + 1) = arr(high);
    arr(high) = temp;
    pivotIndex = i + 1;
end