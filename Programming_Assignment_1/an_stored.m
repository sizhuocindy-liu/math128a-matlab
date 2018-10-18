% A function that returns all the values of an from 1 to n according to the
% sequence (later used to plot graphs) 
function stored_data = an_stored(n)
    stored_data = zeros(1,n);
    for i = 1:n
        a = i;
        if n == 1
            a = 1;
        elseif n == 2
            for m = 1
            a = sqrt(1 + m*a);
            end
        else
            for m = [1,i-1:-1:2]
            a = sqrt(1 + m*a);
            end
        end
     stored_data(i) = a;
    end