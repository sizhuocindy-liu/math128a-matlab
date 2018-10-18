function yout = interpolate2(f, xin, xout)
% input: xin is the list of interpolating points;
% input: xout is the list of evaluation points;
% input: f is a function handle 
% output: yout is the set of values of the interpolating polynomial P(x)
% evaluated at each point in xout
for j = 1 : length(xout)
    numerator_terms = [];
    denominator_terms = [];
    L_terms = [];
    f_terms = [];
    for k = 1 : length(xin)
        L = 1;
        for i = 1 : length(xin)
            if i ~= k
                L_fraction = 1 /(xin(k) - xin(i));
            else
                L_fraction = 1;
            end
            L = L * L_fraction;
        end
        numerator_term = (L * f(xin(k)))/(xout(j) - xin(k));
        denominator_term = L/(xout(j) - xin(k));
        numerator_terms(k) = numerator_term;
        denominator_terms(k) = denominator_term;
        L_terms(k) = L;
        f_terms(k) = f(xin(k));
    end
    if xout(j) == xin(k)
        yout(j) = f_terms(k);
    else
    numerator = sum(numerator_terms);
    denominator = sum(denominator_terms);
    yout(j) = numerator / denominator;
    end
end
end