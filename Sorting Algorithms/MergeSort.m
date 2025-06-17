function MergeSort()
    % Example array to sort
    arr = [38, 27, 43, 3, 9, 82, 10];
    fprintf('Original array:\n');
    disp(arr);

    % Call mergeSort function
    sorted_arr = mergeSort(arr);

    fprintf('Sorted array:\n');
    disp(sorted_arr);
end

function sorted = mergeSort(arr)
    if numel(arr) <= 1
        sorted = arr;
        return;
    end

    mid = floor(length(arr) / 2);
    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));

    sorted = merge(left, right);
end

function result = merge(left, right)
    result = [];
    i = 1; j = 1;

    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            result(end+1) = left(i); 
            i = i + 1;
        else
            result(end+1) = right(j); 
            j = j + 1;
        end
    end

    % Append remaining elements if any
    result = [result, left(i:end), right(j:end)];
end