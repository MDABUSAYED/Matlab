x = [15 20 25 30 35 40]; % inputting values of x 
fx = [0.2588190 0.3420201 0.4226183 0.5 0.5735764 0.6427876]; % inputting values of y
number_of_data = size(x,2);
dt=zeros(number_of_data,number_of_data+1); % function 
for i=1:number_of_data 
    dt(i,1)=x(i);% for loop
    dt(i,2)=fx(i); % calling function 
end 

n = number_of_data - 1; % number of iterations 
for j=3:(number_of_data + 1)
    for i=1:n
        dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
    end
    n=n-1;
end 
%dt
h = x(2)-x(1); % finding the value of h
p = ( 38 - x(number_of_data) ) / h; % defining the value of xp 
p1 = 1;
y = 0;
row = number_of_data - 1;
for i=1:(number_of_data - 1)
    p1 = p1 * ( p+i-1 );
    y = y + ( p1 * dt(row,i+2) ) / factorial(i);
    row = row - 1;
end
y = y + fx(number_of_data);

y
