str_write='/Users/pragmysticalchem/projects/pv/c60/matlab/';

str_tersoff(1).line =...
    [3.0 1.0 0.0 38049 4.3484 -.57058 .72751];

str_tersoff(2).line =...
    [0.00000015724 2.2119 346.7 1.95 0.15 3.4879 1393.6];


strnon(1).line =...
    [0 0 0 0 0 0 0];

strnon(2).line =...
    [0 0 0 0 0 0 0];

fullerenes=4;

cnt=0;
for i1=1:fullerenes
for i2=1:fullerenes
for i3=1:fullerenes
    
    if isequal(i1,i2) && isequal(i1,i3) && isequal(i2,i3)
line = [i1 i2 i3 str_tersoff(1).line];
dlmwrite(...
    [str_write strcat('C.', char(num2str(fullerenes)), '.tersoff')],...
    line ,'-append','delimiter',' ');
dlmwrite(...
    [str_write strcat('C.', char(num2str(fullerenes)), '.tersoff')],...
    str_tersoff(2).line ,'-append','delimiter',' ');
    else
       line = [i1 i2 i3 strnon(1).line];
     dlmwrite(...
    [str_write strcat('C.', char(num2str(fullerenes)), '.tersoff')],...
    line ,'-append','delimiter',' ');
dlmwrite(...
    [str_write strcat('C.', char(num2str(fullerenes)), '.tersoff')],...
    strnon(2).line ,'-append','delimiter',' '); 
    end
cnt=cnt+1;
end
end
end