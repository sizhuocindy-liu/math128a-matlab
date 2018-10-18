% Plot the line y = 3?(ln 2)n, treating n as a continuous variable

g = @(x)(3 -log(2)*x); hold on
fplot(g,[0,40],'LineWidth',1); 

% Make a plot of ln(|an ?a|) vs n

n = 1:40;
y = log(abs(an_stored(40)-3));
plot(n,y);

% Add labels, title, and legend
xlabel('n','FontSize',16); 
ylabel('y','FontSize',16); 
title('Convergence of an','FontSize',16); 
legend('3 -log(2)*x','ln(|an-a|)'); 