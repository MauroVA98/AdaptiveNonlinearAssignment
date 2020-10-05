load('avg.mat');
avg = avg.';

cruise = [9200,9200,12200,12200];

figure

CX = subplot(3,2,1);
plot(avg(1,:),'--');hold on;
plot(avg(1+6,:)); 
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CX.XLim = [1000 16000];
CX.XTick = (1000:2000:16000);
CX.YScale = 'log';
CX.YLim = [1e-12,1e-3];
CX.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
CX.XAxis.Exponent = 2;

title('$C_{X} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
grid on;

CY = subplot(3,2,2);
plt1 = plot(avg(4,:),'--');hold on;
plt2 = plot(avg(4+6,:)); 
pach = patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CY.XLim = [1000 16000];
CY.XTick = (1000:2000:16000);
CY.YScale = 'log';
CY.YLim = [1e-12,1e-3];
CY.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
CY.XAxis.Exponent = 2;

legend ([plt1 plt2 pach],'w = 25','w = 100','cruise flight','Interpreter','Latex','FontSize', 10)
title('$C_{Y} $','Interpreter','Latex','FontSize', 14);
grid on;

CZ = subplot(3,2,3);
plot(avg(2,:),'--');hold on;
plot(avg(2+6,:)); 
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CZ.XLim = [1000 16000];
CZ.XTick = (1000:2000:16000);
CZ.YScale = 'log';
CZ.YLim = [1e-12,1e-3];
CZ.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
CZ.XAxis.Exponent = 2;

title('$C_{Z} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
grid on;

Cl = subplot(3,2,4);
plot(avg(5,:),'--');hold on;
plot(avg(5+6,:)); 
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cl.XLim = [1000 16000];
Cl.XTick = (1000:2000:16000);
Cl.YScale = 'log';
Cl.YLim = [1e-12,1e-3];
Cl.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
Cl.XAxis.Exponent = 2;

title('$C_{l} $','Interpreter','Latex','FontSize', 14);
grid on;

Cm = subplot(3,2,5);
plot(avg(3,:),'--');hold on;
plot(avg(3+6,:)); 
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cm.XLim = [1000 16000];
Cm.XTick = (1000:2000:16000);
Cm.YScale = 'log';
Cm.YLim = [1e-12,1e-3];
Cm.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
Cm.XAxis.Exponent = 2;

title('$C_{m} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
xlabel('$ k\ [-]$','Interpreter','Latex');
grid on;

Cn = subplot(3,2,6);
plot(avg(6,:),'--');hold on;
plot(avg(6+6,:)); 
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cn.XLim = [1000 16000];
Cn.XTick = (1000:2000:16000);
Cn.YScale = 'log';
Cn.YLim = [1e-12,1e-3];
Cn.YTick = [1e-12, 1e-9, 1e-6, 1e-3];
Cn.XAxis.Exponent = 2;

title('$C_{n} $','Interpreter','Latex','FontSize', 14);
xlabel('$ k\ [-]$','Interpreter','Latex');
grid on;

