clc

fid = fopen('temp.txt', 'w')

for j=1:2
    cd(sprintf('Checkerboard_%i', j))

    A = dir('*.tif');

    fprintf(fid ,'array{')
    for i=1:2:length(A)
        fprintf(fid ,'bitmap {filename = "%s";} frame_%i%03.0f;', A(i).name, j, i)
    end
    fprintf(fid ,'} CHECKERBOARD%i;',j)
    
    cd ..
end

fclose(fid)