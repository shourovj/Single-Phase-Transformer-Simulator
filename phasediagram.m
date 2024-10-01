function []=phasediagram(mag,angl,s,s1)
disp('Hi')
x=linspace(0,mag,1000);
y=angl*ones(1,length(x));
title('Phase Diagram reffered to the Secondary Side') 
polarplot(y,x,s,'DisplayName',s1,'LineWidth',3,'MarkerSize',10)
legend
hold on
rlim('auto')
thetalim([-90 90])
end