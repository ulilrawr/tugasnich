function [x, iter] = sor(A, b, omega, x0, tol, max_iter)

if nargin < 5
    tol = 1e-6;
end
if nargin < 6
    max_iter = 100;
end

[m, n] = size(A);
if m ~= n
    error('matriks a harus persegi.');
end
if size(b, 1) ~= m || size(b, 2) ~= 1
    error('vektor harus memiliki jumlah baris yang sama dengan vektor kolom.');
end
if size(x0, 1) ~= m || size(x0, 2) ~= 1
    error('vektor harus mempunyai dimensi yang sama dengan vektor solusi.');
end
if omega <= 0 || omega >= 2
    error('harus berada di antara 1 dan 2.');
end


x = x0;
residual = norm(b - A*x);
iter = 0;


while residual > tol && iter < max_iter
    for i = 1:m
        x_new = omega * ((1/A(i, i)) * (b(i) - A(i, 1:i-1)*x(1:i-1) - A(i, i+1:n)*x(i+1:n))) + ...
                (1 - omega) * x(i);
        x(i) = x_new;
    end
    new_residual = norm(b - A*x);
    convergence_rate = abs(new_residual - residual) / residual;
    residual = new_residual;
    iter = iter + 1;
    
    if convergence_rate < 1e-6
        warning('SOR tidak konvergen.');
    end
end

if iter == max_iter
    warning('SOR tidak konvergen di iterasi maximum.');
end
end
