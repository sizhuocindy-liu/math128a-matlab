f = @(x) 1.0 ./ (1+9*x.^2);
xout=linspace(-1,1,500)';

n = 50;
xinC = cos(linspace(-pi,0,n+1)');
xinU = linspace(-1,1,n+1)';

% n = 50, xinU
subplot(2,2,1);
youtA1 = interpolate1(f,xinU,xout)';
youtA2 = interpolate2(f,xinU,xout)';
semilogy(xout,1.0e-18+abs([youtA1-f(xout),youtA2-f(xout)]),'linewidth',1);
lgd = legend('Interpolate1','Interpolate2');
lgd.Location = 'north'; 
title('Uniform, n = 50');

% n = 50, xinC
subplot(2,2,2);
youtA1 = interpolate1(f,xinC,xout)';
youtA2 = interpolate2(f,xinC,xout)';
semilogy(xout,1.0e-18+abs([youtA1-f(xout),youtA2-f(xout)]),'linewidth',1);
lgd = legend('Interpolate1','Interpolate2');
lgd.Location = 'south'; 
title('Chebyshev, n = 50');

n = 99;
xinC = cos(linspace(-pi,0,n+1)');
xinU = linspace(-1,1,n+1)';

% n = 99, xinU
subplot(2,2,3);
youtA1 = interpolate1(f,xinU,xout)';
youtA2 = interpolate2(f,xinU,xout)';
semilogy(xout,1.0e-18+abs([youtA1-f(xout),youtA2-f(xout)]),'linewidth',1);
lgd = legend('Interpolate1','Interpolate2');
lgd.Location = 'north'; 
title('Uniform, n = 99');

% n = 99, xinC
subplot(2,2,4);
youtA1 = interpolate1(f,xinC,xout)';
youtA2 = interpolate2(f,xinC,xout)';
semilogy(xout,1.0e-18+abs([youtA1-f(xout),youtA2-f(xout)]),'linewidth',1);
lgd = legend('Interpolate1','Interpolate2');
lgd.Location = 'south'; 
title('Chebyshev, n = 99');