x = [1 3 5 7]; % inputting values of x 
fx = [24 120 336 720]; % inputting values of y 
number_of_data = size(x,2);
dt = zeros(number_of_data,number_of_data+1); % function
for i = 1:number_of_data
    dt(i,1) = x(i);
    dt(i,2) = fx(i); 
end 

n = number_of_data - 1;
for j = 3:(number_of_data + 1)
    for i = 1:n
        dt(i,j) = dt(i+1,j-1)-dt(i,j-1);
    end
    n = n-1;
end 
dt;
h = x(2)-x(1); % finding the value of h
p = ( 2 - x(1) ) / h; % defining the value of xp 
p1 = 1;
y = 0;
for i = 1:(number_of_data - 1)
    p1 = p1 * ( p-i+1 );
    y = y + ( p1 * dt(1,i+2) ) / factorial(i);
end
y = y + fx(1);

y
