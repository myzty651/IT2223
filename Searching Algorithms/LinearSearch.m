%% Linear Search
arr = [3 5 7 9 11 13];
target = 13;
n = length(arr);
found = false;
tic;
    
for i=1:n
 if arr(i) == target
      found = true;
      index = i;
      break;
 end
 end
 
 if found
  fprintf("The target element is found at index:  %d\n",index)
 else
     disp("The target element is not found");
 
 end

elapsedTime = toc;

fprintf("Elapsed Time for linear search:%fseconds\n",elapsedTime);
