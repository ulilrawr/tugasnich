
A = [1 2 3; 4 5 6; 7 8 9];
b = [1; 2; 3];

[x, isSingular] = gauss(A, b);

if isSingular
    disp('solusi :')
    disp(x)
else
    disp('matriks tunggal.')
end

A = [10 -1 2; -1 11 -1; 2 -1 12];
b = [13; 7; 15];
omega = 1.2;
x0 = zeros(3, 1);

[x, iter] = sor(A, b, omega, x0);

disp('solusi:')
disp(x)
disp(['iterasi', num2str(iter)])
