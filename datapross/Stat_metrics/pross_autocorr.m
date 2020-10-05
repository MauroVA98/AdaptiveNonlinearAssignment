load('autocorr.mat');

N = 100;
ov = 50;
gap = 26;

x = 1019:ov+1:length(autocorr);
ac1 = squeeze(abs(autocorr(N+1,:,x)));
ac2 = squeeze(abs(autocorr(N+gap,:,x)));

cruise = [9200,9200,13000,13000];

figure

CX = subplot(3,2,1);
plot(x,ac1(1,:)); hold on;
plot(x,ac2(1,:),'--');
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CX.XLim = [1000 16000];
CX.XTick = (1000:2000:16000);
CX.YScale = 'log';
CX.YLim = [1e-11,1e-3];
CX.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
CX.XAxis.Exponent = 2;

title('$C_{X} $','Interpreter','Latex','FontSize', 14);
ylabel('$\pi_{k_{gap}} (k)\ [-]$','Interpreter','Latex','FontSize', 14);
grid on;

CY = subplot(3,2,2);
plt1 = plot(x,ac1(4,:)); hold on;
plt2 = plot(x,ac2(4,:),'--');
pach = patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CY.XLim = [1000 16000];
CY.XTick = (1000:2000:16000);
CY.YScale = 'log';
CY.YLim = [1e-11,1e-3];
CY.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
CY.XAxis.Exponent = 2;

legend ([plt1, plt2, pach],'$k_{gap}$ = 1', '$k_{gap}$ = 25','cruise flight','Interpreter','Latex','FontSize', 10)
title('$C_{Y} $','Interpreter','Latex','FontSize', 14);
grid on;

CZ = subplot(3,2,3);
plot(x,ac1(2,:)); hold on;
plot(x,ac2(2,:),'--');
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CZ.XLim = [1000 16000];
CZ.XTick = (1000:2000:16000);
CZ.YScale = 'log';
CZ.YLim = [1e-11,1e-3];
CZ.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
CZ.XAxis.Exponent = 2;

title('$C_{Z} $','Interpreter','Latex','FontSize', 14);
ylabel('$\pi_{k_{gap}} (k)\ [-]$','Interpreter','Latex','FontSize', 14);
grid on;

Cl = subplot(3,2,4);
plot(x,ac1(5,:)); hold on;
plot(x,ac2(5,:),'--');
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cl.XLim = [1000 16000];
Cl.XTick = (1000:2000:16000);
Cl.YScale = 'log';
Cl.YLim = [1e-11,1e-3];
Cl.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
Cl.XAxis.Exponent = 2;

title('$C_{l} $','Interpreter','Latex','FontSize', 14);
grid on;

Cm = subplot(3,2,5);
plot(x,ac1(3,:)); hold on;
plot(x,ac2(3,:),'--');
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cm.XLim = [1000 16000];
Cm.XTick = (1000:2000:16000);
Cm.YScale = 'log';
Cm.YLim = [1e-11,1e-3];
Cm.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
Cm.XAxis.Exponent = 2;

title('$C_{m} $','Interpreter','Latex','FontSize', 14);
ylabel('$\pi_{k_{gap}} (k)\ [-]$','Interpreter','Latex','FontSize', 14);
xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
grid on;

Cn = subplot(3,2,6);
plot(x,ac1(6,:)); hold on;
plot(x,ac2(6,:),'--');
patch(cruise,[10e-100, 10e-2, 10e-2, 10e-100],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cn.XLim = [1000 16000];
Cn.XTick = (1000:2000:16000);
Cn.YScale = 'log';
Cn.YLim = [1e-11,1e-3];
Cn.YTick = [1e-10, 1e-8, 1e-6, 1e-4];
Cn.XAxis.Exponent = 2;

title('$C_{n} $','Interpreter','Latex','FontSize', 14);
xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);

grid on;