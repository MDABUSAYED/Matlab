a = 0;
b = 2;
n = 6;
h = (b - a) / ( n );

x = linspace(a, b, n + 1);
x;
%y = sqrt(1 + x.^2);
%y = 1./(1 + x.^2);
y = exp(x);
y;
coefficient = ones(1, length(x));

for i = 2:length(x) -1
    coefficient(i) = 2* coefficient(i);
end
result = ( h / 2 ) * (sum(y.*coefficient));
disp(result);