% Plot functions

% Plot p(x) for case 3
p3 = @(x)(4*x^3 + 8*x^2 -4*x -2); hold on
min = plot(0.21525,-2.45045, 'r*'); hold on
max = plot(-1.54858,8.524521, 'b*'); hold on 
fplot(p3,[-2,1],'LineWidth',1); 

% Plot p(x) for case 7
p7 = @(x)(-3*x^3 + 9*x^2 -(1.0e-14)*x); hold on
min = plot(3,0, 'r*'); hold on
max = plot(1.8765,11.868380, 'b*');
fplot(p7,[0,3],'LineWidth',1); 

% Add labels, title, and legend
xlabel('x','FontSize',16); 
ylabel('p(x)','FontSize',16); 
title('Plotting Functions Cases 3 and 7','FontSize',16); 
legend('min', 'max','p3', 'min', 'max','p7'); 