% Part One: Write a program that takes 6 inputs a, b, c, d, e, f and find the locations xmin and xmax of the absolute extrema of the function
% p(x) = c*x^3 + d*x^2 + e*x + f over the interval [a,b]

function rslt = polyMinMax(a,b,c,d,e,f)
% input: c,d,e,f are coefficients of the polynomial p(x) = c*x^3 + d*x^2 + e*x + f
% input: a and b create the interval for which the polynomial exists
% output: rslt is a row vector containing the x and y coordinates of the
% absolute minimum and maximum of p(x)
    coefficients = [c,d,e,f];
    
    % find derivative of the original polynomial 
    func_df = polyder(coefficients);
    
    % find critical points of the polynomial by finding roots of derivative
    if func_df == 0
        critical_points = 0;
    elseif length(func_df) == 2
        a1 = func_df(1);
        b1 = func_df(2);
        critical_points = -b1/a1;
    else
        a1 = func_df(1);
        b1 = func_df(2);
        c1 = func_df(3);
        critical_points = [(2*c1)/(-b1-sqrt((b1)^2-4*a1*c1)),(2*c1)/(-b1+sqrt((b1)^2-4*a1*c1))];
    end
    % filter out critical points that are outside of the considered range
    for i = 1:length(critical_points)
        if critical_points(i) < a || critical_points(i) > b
            critical_points(i) = [];
        end
        i = i + 1;
    end
    valid = critical_points;
    
    % evaluate f at the critical points and the start and end points 
    px_a = c*a^3 + d*a^2 + e*a + f;
    px_b = c*b^3 + d*b^2 + e*b + f;
    if length(critical_points) == 1
        px_critical_point1 = c*valid^3 + d*valid^2 + e*valid + f;
        px_critical_point2 = NaN;
    elseif length(valid) == 2
        px_critical_point1 = c*valid(1)^3 + d*valid(1)^2 + e*valid(1) + f;
        px_critical_point2 = c*valid(2)^3 + d*valid(2)^2 + e*valid(2) + f;
    end
    all_f = [px_a,px_b,px_critical_point1, px_critical_point2];
    
    % find the min and max y values and their corresponding x values
    pxmax = max(all_f);
    pxmin = min(all_f);
    if pxmax == px_a
        xmax = a;
    elseif pxmax == px_b
        xmax = b;
    elseif pxmax == px_critical_point1
        xmax = valid(1);
    elseif pxmax == px_critical_point2
        xmax = valid(2);
    end
    if pxmin == px_a
        xmin = a;
    elseif pxmin == px_b
        xmin = b;
    elseif pxmin == px_critical_point1
        xmin = valid(1);
    elseif pxmin == px_critical_point2
        xmin = valid(2);
    end
    rslt = [vpa(xmin,6), vpa(xmax,6), vpa(pxmin,6), vpa(pxmax,6)];
end 



