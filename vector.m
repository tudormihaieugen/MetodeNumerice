function vector
v = [1 2 3 1 5 2 6];
dim=size(v);

for i=1:dim(2)-1
    w(i)=5*v(i)-v(i+1);
end

file = fopen('myfile.txt', 'w');
fprintf(file,'%d \n', w);
fclose(file);