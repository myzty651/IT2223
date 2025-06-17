%% Based on targrt binary and linear searchy work differently. 
%% If target index is in first half linear search is faster than binary search. 
%% If target index is in the middle both are same.
%% If target index is in last half binary search is faster than  linear search. 

array = 1:1000;

target = 500;  

%%Linear Search

tic
linearIndex=-1;

for i = 1:length(array)
    if array(i) == target
        linearIndex = i;
        break;

    end
end

time_linear = toc;

%%Binary Search

tic  %% tic --> start of the time
low = 1;
high = length(array);
binaryIndex = -1;

while low <= high
   mid = floor((low+high)/2);
    
     if array(mid) == target
        binaryIndex = mid;
        break;
     elseif array(mid) < target
             low = mid+1;
    
     else 
         high = mid -1;
     end

end

time_binary = toc;  %% toc--> End of the time


%% Display results 
fprintf("Target is:%d\n",target);
fprintf("Linear Search Index:%d, Time:%.10f seconds\n",linearIndex,time_linear);
fprintf("Binary Search Index:%d, Time:%.10f seconds\n",binaryIndex,time_binary);
