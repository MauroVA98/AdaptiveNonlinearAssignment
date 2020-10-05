avg_fail = load('ANDI_fail\avg.mat');
avg = load('ANDI_nofail\avg.mat');

avg = avg.avg.';
avg_fail = avg_fail.avg.';

figure

CX = subplot(3,2,1);
plot(avg(1,:),'--');hold on;
plot(avg_fail(1,:)); 

CX.XLim = [1000 70000];
CX.YScale = 'log';
CX.YLim = [1e-14,1e-2];
CX.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
CX.XAxis.Exponent = 2;

title('$C_{X} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');

grid on;

CY = subplot(3,2,2);
plt1 = plot(avg(4,:),'--');hold on;
plt2 = plot(avg_fail(4,:)); 
thr = yline(0.00331064740477677,'-.b');

CY.XLim = [1000 70000];
CY.YScale = 'log';
CY.YLim = [1e-14,1e-2];
CY.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
CY.XAxis.Exponent = 2;

title('$C_{Y} $','Interpreter','Latex','FontSize', 14);

grid on;
legend ([plt1 plt2 thr],'ANDI','ANDI Fail','threshold','Interpreter','Latex','FontSize', 10)

CZ = subplot(3,2,3);
plot(avg(2,:),'--');hold on;
plot(avg_fail(2,:)); 
yline(0.00115280628719170,'-.b');

CZ.XLim = [1000 70000];
CZ.YScale = 'log';
CZ.YLim = [1e-14,1e-2];
CZ.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
CZ.XAxis.Exponent = 2;

title('$C_{Z} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');


grid on;

Cl = subplot(3,2,4);
plot(avg(5,:),'--');hold on;
plot(avg_fail(5,:)); 
yline(5.4075e-5,'-.b');

Cl.XLim = [1000 70000];
Cl.YScale = 'log';
Cl.YLim = [1e-14,1e-2];
Cl.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
Cl.XAxis.Exponent = 2;

title('$C_{l} $','Interpreter','Latex','FontSize', 14);


grid on;

Cm = subplot(3,2,5);
plot(avg(3,:),'--');hold on;
plot(avg_fail(3,:)); 

Cm.XLim = [1000 70000];
Cm.YScale = 'log';
Cm.YLim = [1e-14,1e-2];
Cm.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
Cm.XAxis.Exponent = 2;

title('$C_{m} $','Interpreter','Latex','FontSize', 14);
ylabel('$\overline{\Delta}(k)\ [-]$','Interpreter','Latex');
xlabel('$ k\ [-]$','Interpreter','Latex');

grid on;

Cn = subplot(3,2,6);
plot(avg(6,:),'--');hold on;
plot(avg_fail(6,:)); 
yline(5.14e-4,'-.b');

Cn.XLim = [1000 70000];
Cn.YScale = 'log';
Cn.YLim = [1e-14,1e-2];
Cn.YTick = [1e-14, 1e-10, 1e-6, 1e-2];
Cn.XAxis.Exponent = 2;

title('$C_{n} $','Interpreter','Latex','FontSize', 14);

xlabel('$ k\ [-]$','Interpreter','Latex');

grid on;

