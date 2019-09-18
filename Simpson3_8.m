a = 0;
b = 2;
n = 6;
h = (b - a) / ( n  );

x = linspace(a, b, n + 1);
%y = sqrt(1 + x.^2);
%y = 1./(1 + x.^2);
y = exp(x);
coefficient = ones(1, length(x));

for i = 2:length(x) -1
    if mod(i,3) == 1
        coefficient(i) = 2 * coefficient(i);
    else
        coefficient(i) = 3 * coefficient(i);
    end
end
result = (3 * h / 8) * (sum(y.*coefficient));
disp(result);