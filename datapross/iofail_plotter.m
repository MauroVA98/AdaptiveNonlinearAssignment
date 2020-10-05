load('INDI_fail\input.mat')
load('INDI_fail\defl.mat')
load('INDI_fail\reset.mat')

fail = find(reset(:,4));
defl = defl(:,1:3);
ref = input(:,1:3);

fig = figure('Name', 'Joystick Inputs & Deflections');

Da = subplot(3,1,1);
yyaxis left;
plot(defl(:,2),'b'); hold on
plot(fail,defl(fail,2),'x','Color','r','MarkerSize',12);
ylabel('$\delta_{a}(k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
Da.YLim = [-0.1, 0.3];
yyaxis right;
plot(ref(:,1),'--','Color', 'r'); hold on
ylabel('$p_{ref} (k)\ [\mathrm{rad}/s]$', 'interpreter','latex','FontSize', 14);
Da.XLim = [0 700e2];
Da.YLim = [-0.1, 0.3];
Da.XAxis.Exponent = 2;
grid on
legend('Deflection', 'Failure', 'Reference Signal', 'FontSize', 10);

De = subplot(3,1,2);
yyaxis left;
plot(defl(:,1),'b'); hold on
plot(fail,defl(fail,1),'x','Color','r','MarkerSize',10);
De.YLim = [-0.07, 0.05];
ylabel('$\delta_{e} (k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
yyaxis right;
plot(ref(:,1),'--','Color', 'r'); hold on
ylabel('$q_{ref}(k)\ [\mathrm{rad}/s]$', 'interpreter','latex','FontSize', 14);
De.XLim = [0 700e2];
De.YLim = [-0.07, 0.05];
De.XAxis.Exponent = 2;
grid on

Dr = subplot(3,1,3);
yyaxis left;
plot(defl(:,3),'b'); hold on
plot(fail,defl(fail,3),'x','Color','r','MarkerSize',10);
Dr.YLim = [-0.3, 0.1];
ylabel('$\delta_{r}(k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
yyaxis right;
plot(ref(:,3),'--','Color', 'r'); hold on
ylabel('$\beta_{ref} (k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
Dr.XLim = [0 700e2];
Dr.YLim = [-0.3, 0.1];
Dr.XAxis.Exponent = 2;
grid on
xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);