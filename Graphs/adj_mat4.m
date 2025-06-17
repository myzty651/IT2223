clc
clearvars

s = [1 1 2 3 4];
t = [2 3 4 4 5];
G =graph(s,t);
nodeColors = [ 
   %R G B Values are Used Here 
    1 0 0;
    0 1 0;
    0 0 1;
    1 1 0;
    1 0 1;
];

plot(G,'NodeColor',nodeColors,'LineWidth',1.5);