%Binary Search
    arr = [3 5 7 9 11 13];
    low = 1;
    high = length(arr);
    target=13;
    found=false;
    tic;
    
    while (low <= high)
        mid = floor((low + high)/2);

        if arr(mid) == target
            fprintf("Target found at index: %d\n",mid);
            found=true;
            break;
        elseif arr(mid) < target
            low = mid + 1;
        else
            high = mid - 1;
        end
    end
    
 if ~found 
     fprintf("Target not found in the array\n");
 end

elapsedTime = toc; 

fprintf("Elapsed Time for binary search:%fseconds\n",elapsedTime);