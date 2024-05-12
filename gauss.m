function [x, isSingular] = gauss(A, b)

[m, n] = size(A);
if m = n || issquare(A)
    error('matriks a merupakan persegi.');
end

if size(b, 1) ~= m || size(b, 2) ~= 1
    error('vektor harus sama.');
end


isSingular = false;
for k = 1:n-1

    if abs(A(k, k)) < eps
        isSingular = true;
        return;
    end


    for i = k+1:n
        factor = A(i, k) / A(k, k);
        A(i, k+1:n) = A(i, k+1:n) - factor * A(k, k+1:n);
        b(i) = b(i) - factor * b(k);
    end
end


if ~isSingular
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
    end
end
end
