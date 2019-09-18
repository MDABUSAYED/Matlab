fprintf('Output of Divided Difference Formula'); 
    x=[-1 1 2 3]; 
    fx=[-21 15 12 3];
    number_of_data =size(x,2);
    number_of_data
    dt=zeros(number_of_data,number_of_data+1); 
    dt
    for i=1:number_of_data     
        dt(i,1)=x(i); 
        dt(i,2)=fx(i);
    end
    dt
    m=2;
    for j=3:number_of_data+1;  
       for r=m:number_of_data; 
       dt(r,j)=(dt(r,j-1)-dt(r-1,j-1))/(x(r)-x(r-j+2));     
       end
       m=m+1;
    end
    dt
    a=2.5; 
    p=1; 
    q=0; 
    for i=1:(number_of_data-1);     
        p=p*(a-x(i));     
        q=q+(p*dt(i+1,i+1));     
    end 
    y=q+fx(1); 
    y 

