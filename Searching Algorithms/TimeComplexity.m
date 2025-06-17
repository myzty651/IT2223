n=1000;

tic; %start timing

for i=1:n
    disp(i)
end

elapsedTime = toc; %end timing

fprintf("Elapsed Time:%fseconds\n",elapsedTime);