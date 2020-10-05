load('INDI_nofail\input.mat')
load('INDI_nofail\defl.mat')

defl = defl(:,1:3);
ref = input(:,1:3);

fig = figure('Name', 'Joystick Inputs & Deflections');

Da = subplot(3,1,1);
yyaxis left;
plot(defl(:,2),'b'); hold on
ylabel('$\delta_{a}(k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
Da.YLim = [-0.04, 0.08];
yyaxis right;
plot(ref(:,1),'--','Color', 'r'); hold on
ylabel('$p_{ref} (k)\ [\mathrm{rad}/s]$', 'interpreter','latex','FontSize', 14);
Da.XLim = [0 700e2];
Da.YLim = [-0.04, 0.08];
Da.XAxis.Exponent = 2;
grid on
legend('Deflection', 'Reference Signal', 'FontSize', 10);

De = subplot(3,1,2);
yyaxis left;
plot(defl(:,1),'b'); hold on
ylabel('$\delta_{e} (k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
De.YLim = [-0.06, 0.04];
yyaxis right;
plot(ref(:,1),'--','Color', 'r'); hold on
ylabel('$q_{ref}(k)\ [\mathrm{rad}/s]$', 'interpreter','latex','FontSize', 14);
De.XLim = [0 700e2];
De.YLim = [-0.06, 0.04];
De.XAxis.Exponent = 2;
grid on

Dr = subplot(3,1,3);
yyaxis left;
plot(defl(:,3),'b'); hold on
ylabel('$\delta_{r}(k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
Dr.YLim = [-0.3, 0.1];
yyaxis right;
plot(ref(:,3),'--','Color', 'r'); hold on
ylabel('$\beta_{ref} (k)\ [\mathrm{rad}]$', 'interpreter','latex','FontSize', 14);
Dr.XLim = [0 700e2];
Dr.XAxis.Exponent = 2;
Dr.YLim = [-0.3, 0.1];
grid on
xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);