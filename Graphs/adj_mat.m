clc
clearvars

%adjency matices
A = [   0 1 0;
        1 0 1;
        0 1 0
     ];
 G= graph(A);
 plot(G);
 title("Adejency Maticess ");