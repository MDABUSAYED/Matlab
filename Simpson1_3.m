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
    if mod(i,2) == 0 
        coefficient(i) = 4 * coefficient(i);
    else
        coefficient(i) = 2 * coefficient(i);
    end
end
result = ( h / 3 ) * (sum(y.*coefficient));
disp(result);