load('inov.mat');
load('finov.mat')
load('fail.mat')

inov = abs(inov);
finov = abs(finov);

xcruise = [70,70,90,90]*1e2;
w = 100;

figure

CX = subplot(3,2,1);
plot(movmean(inov(:,1),w)); hold on;
xline(13209,'--r');
plot(movmean(finov(:,1),w),'--');
patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CX.YLim = [1e-8,1e-1];
CX.YScale = 'log';
CX.XLim = [1000 16000];
CX.XTick = (1000:2000:16000);
CX.XAxis.Exponent = 2;
CX.YAxis.Exponent = -2;

title('$C_{X} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
grid on;

CY = subplot(3,2,2);
error_plt = plot(movmean(inov(:,4),w)); hold on;
fail = xline(13209,'--r');
errorloss_plt = plot(movmean(finov(:,4),w),'--');
pch = patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CY.YLim = [1e-8,1e-1];
CY.YScale = 'log';
CY.XLim = [1000 16000];
CY.XTick = (1000:2000:16000);
CY.XAxis.Exponent = 2;
CY.YAxis.Exponent = -2;

title('$C_{Y} $','Interpreter','Latex','FontSize', 14);
legend ([error_plt, errorloss_plt, pch, fail],'RLS w/ reset','RLS w/ \lambda = 0.99', 'cruise flight','failure','FontSize', 9)
grid on;

CZ = subplot(3,2,3);
plot(movmean(inov(:,2),w)); hold on;
xline(13209,'--r');
plot(movmean(finov(:,2),w),'--');
patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

CZ.YLim = [1e-8,1e-1];
CZ.YScale = 'log';
CZ.XLim = [1000 16000];
CZ.XTick = (1000:2000:16000);
CZ.XAxis.Exponent = 2;
CZ.YAxis.Exponent = -2;

title('$C_{Z} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
grid on;

Cl = subplot(3,2,4);
plot(movmean(inov(:,5),w)); hold on;
xline(13209,'--r');
plot(movmean(finov(:,5),w),'--');
patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cl.YLim = [1e-8,1e-1];
Cl.YScale = 'log';
Cl.XLim = [1000 16000];
Cl.XTick = (1000:2000:16000);
Cl.XAxis.Exponent = 2;
Cl.YAxis.Exponent = -2;

title('$C_{l} $','Interpreter','Latex','FontSize', 14);
grid on;

Cm = subplot(3,2,5);
plot(movmean(inov(:,3),w)); hold on;
xline(13209,'--r');
plot(movmean(finov(:,3),w),'--');
patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cm.YLim = [1e-8,1e-1];
Cm.YScale = 'log';
Cm.XLim = [1000 16000];
Cm.XTick = (1000:2000:16000);
Cm.XAxis.Exponent = 2;
Cm.YAxis.Exponent = -2;

title('$C_{m} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
xlabel('$ k\ [-]$','Interpreter','Latex');

grid on;

Cn = subplot(3,2,6);
plot(movmean(inov(:,6),w)); hold on;
xline(13209,'--r');
plot(movmean(finov(:,6),w),'--');
patch(xcruise,[10e-10, 10e-1, 10e-1, 10e-10],[0 1 0],'FaceAlpha',0.15, 'EdgeAlpha', 0.2);

Cn.YLim = [1e-8,1e-1];
Cn.YScale = 'log';
Cn.XLim = [1000 16000];
Cn.XTick = (1000:2000:16000);
Cn.XAxis.Exponent = 2;
Cn.YAxis.Exponent = -3;

title('$C_{n} $','Interpreter','Latex','FontSize', 14);
xlabel('$ k\ [-]$','Interpreter','Latex');

grid on;

