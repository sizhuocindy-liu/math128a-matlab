function yout = interpolate1(f, xin, xout)
% input: xin is the list of interpolating points;
% input: xout is the list of evaluation points;
% input: f is a function handle 
% output: yout is the set of values of the interpolating polynomial P(x)
% evaluated at each point in xout
for j = 1 : length(xout)
    L_terms = [];
    f_terms = [];
    for k = 1 : length(xin)
        L = 1;
        for i = 1 : length(xin)
            if i ~= k
                L_fraction = ((xout(j) - xin(i))/(xin(k) - xin(i)));
            else
                L_fraction = 1;
            end
            L = L * L_fraction;
        end
        L_terms(k) = L;
        f_terms(k) = f(xin(k));
    end
    f_L = L_terms .* f_terms;
    yout(j) = sum(f_L);
end
end



