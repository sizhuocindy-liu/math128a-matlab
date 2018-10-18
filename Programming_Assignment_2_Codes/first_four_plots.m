f = @(x) 1.0 ./ (1+9*x.^2);
% n = 10, xinU
subplot(2,2,1);
xinU = linspace(-1,1,10+1); 
xout=linspace(-1,1,500);
y = interpolate1(f, xinU, xout); 
plot(xout,y, 'LineWidth', 1); hold on 
fplot(f,[-1,1],'LineWidth',1); hold on 
title('Uniform, n = 10');

% n = 19, xinU
subplot(2,2,2);
xinU = linspace(-1,1,19+1); 
xout=linspace(-1,1,500);
y = interpolate1(f, xinU, xout); 
plot(xout,y, 'LineWidth', 1); hold on 
fplot(f,[-1,1],'LineWidth',1); hold on 
title('Uniform, n = 19');

% n = 10, xinC
subplot(2,2,3);
xinC = cos(linspace(-pi,0,10+1));
y = interpolate1(f, xinC, xout); 
plot(xout,y, 'LineWidth', 1); hold on 
fplot(f,[-1,1],'LineWidth',1); hold on 
title('Chebyshev, n = 10');

% n = 19, xinC
subplot(2,2,4);
xinC = cos(linspace(-pi,0,19+1));
y = interpolate1(f, xinC, xout); 
plot(xout,y, 'LineWidth', 1); hold on 
fplot(f,[-1,1],'LineWidth',1); hold on 
title('Chebyshev, n = 19');