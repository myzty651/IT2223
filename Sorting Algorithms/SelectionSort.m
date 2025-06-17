%% Sorting
% 1.Selection Sort

% Original unsorted array
array = [64, 25, 12, 22, 11];

n = length(array);

for i = 1:n-1
    % Assume the minimum is at position i
    min_idx = i;
    
    % Search for the minimum element in the unsorted part
    for j = i+1:n
        if array(j) < array(min_idx)
            min_idx = j;
        end
    end
    
    % Swap the current element with the found minimum
    if min_idx ~= i
        temp = array(i);
        array(i) = array(min_idx);
        array(min_idx) = temp;
    end
end

% Display the sorted array
disp('Sorted array:');
disp(array);


