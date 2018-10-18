% Part Two: Write a code that takes an integer and returns the nth term of
% a sequence

function a = nested_sqrt(n)
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
    end
