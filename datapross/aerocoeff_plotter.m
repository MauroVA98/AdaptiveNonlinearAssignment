ANDI_fail = load('ANDI_fail\aerocoeff.mat');
ANDI_nofail = load('ANDI_nofail\aerocoeff.mat');

load('ANDI_fail\reset.mat');
fail1 = find(reset(:,4));

ACX = ANDI_fail.aerocoeff(:,1,:);
ACZ = ANDI_fail.aerocoeff(:,2,:);
ACm = ANDI_fail.aerocoeff(:,3,:);
ACY = ANDI_fail.aerocoeff(:,4,:);
ACl = ANDI_fail.aerocoeff(:,5,:);
ACn = ANDI_fail.aerocoeff(:,6,:);

CCX = ANDI_nofail.aerocoeff(:,1,:);
CCZ = ANDI_nofail.aerocoeff(:,2,:);
CCm = ANDI_nofail.aerocoeff(:,3,:);
CCY = ANDI_nofail.aerocoeff(:,4,:);
CCl = ANDI_nofail.aerocoeff(:,5,:);
CCn = ANDI_nofail.aerocoeff(:,6,:);

figure('Name', 'CX')

    CX0 = subplot(3,2,1);
    plot(ACX(1,:),'Color', 'b'); hold on;
    plot(fail1, ACX(1,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCX(1,:), '--', 'Color', 'r');
    CX0.XLim = [0 700e2];
    CX0.XAxis.Exponent = 2;

    ylabel('$C_{X_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CXa = subplot(3,2,2);
    plot(ACX(2,:),'Color', 'b'); hold on;
    plot(fail1, ACX(2,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCX(2,:), '--', 'Color', 'r');
    CXa.XLim = [0 700e2];
    CXa.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{X_{\alpha}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CXa2 = subplot(3,2,3);
    plot(ACX(3,:),'Color', 'b'); hold on;
    plot(fail1, ACX(3,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCX(3,:), '--', 'Color', 'r');
    CXa2.XLim = [0 700e2];
    CXa2.XAxis.Exponent = 2;

    ylabel('$C_{X_{\alpha^{2}}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CXq = subplot(3,2,4);
    plot(ACX(4,:),'Color', 'b'); hold on;
    plot(fail1, ACX(4,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCX(4,:), '--', 'Color', 'r');
    CXq.XLim = [0 700e2];
    CXq.XAxis.Exponent = 2;

    ylabel('$C_{X_{q}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CXd = subplot(3,2,5:6);
    plot(ACX(5,:),'Color', 'b'); hold on;
    plot(fail1, ACX(5,fail1), 'x', 'Color', 'r','MarkerSize', 10);    
    plot(CCX(5,:), '--', 'Color', 'r');
    CXd.XLim = [0 700e2];
    CXd.XAxis.Exponent = 2;

    ylabel('$C_{X_{\delta_{e}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    CX0.YLim = [-0.1, 0.1];
    CXa.YLim = [-2, 3];
    CXq.YLim = [-40, -15];
    CXd.YLim = [-5, 1];

figure('Name', 'CZ')

    CZ0 = subplot(2,2,1);
    plot(ACZ(1,:),'Color', 'b'); hold on;
    plot(fail1, ACZ(1,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCZ(1,:), '--', 'Color', 'r');
    CZ0.XLim = [0 700e2];
    CZ0.XAxis.Exponent = 2;

    ylabel('$C_{Z_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CZa = subplot(2,2,2);
    plot(ACZ(2,:),'Color', 'b'); hold on;
    plot(fail1, ACZ(2,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCZ(2,:), '--', 'Color', 'r');
    CZa.XLim = [0 700e2];
    CZa.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{Z_{\alpha}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CZq = subplot(2,2,3);
    plot(ACZ(3,:),'Color', 'b'); hold on;
    plot(fail1, ACZ(3,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCZ(3,:), '--', 'Color', 'r');
    CZq.XLim = [0 700e2];
    CZq.XAxis.Exponent = 2;

    ylabel('$C_{Z_{q}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 16);
    grid on;

    CZd = subplot(2,2,4);
    plot(ACZ(4,:),'Color', 'b'); hold on;
    plot(fail1, ACZ(4,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCZ(4,:), '--', 'Color', 'r');
    CZd.XLim = [0 700e2];
    CZd.XAxis.Exponent = 2;

    ylabel('$C_{Z_{\delta_{e}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 16);
    grid on;
    
    CZ0.YLim = [-0.145, -0.135];
    CZa.YLim = [-5.52, -5.38];
    CZq.YLim = [-16, -8];
    CZd.YLim = [-0.7, -0.5];

figure('Name', 'Cm')

    Cm0 = subplot(2,2,1);
    plot(ACm(1,:),'Color', 'b'); hold on;
    plot(fail1, ACm(1,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCm(1,:), '--', 'Color', 'r');
    Cm0.XLim = [0 700e2];
    Cm0.XAxis.Exponent = 2;

    ylabel('$C_{m_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cma = subplot(2,2,2);
    plot(ACm(2,:),'Color', 'b'); hold on;
    plot(fail1, ACm(2,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCm(2,:), '--', 'Color', 'r');
    Cma.XLim = [0 700e2];
    Cma.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{m_{\alpha}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cmq = subplot(2,2,3);
    plot(ACm(3,:),'Color', 'b'); hold on;
    plot(fail1, ACm(3,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCm(3,:), '--', 'Color', 'r');
    Cmq.XLim = [0 700e2];
    Cmq.XAxis.Exponent = 2;

    ylabel('$C_{m_{q}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cmd = subplot(2,2,4);
    plot(ACm(4,:),'Color', 'b'); hold on;
    plot(fail1, ACm(4,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCm(4,:), '--', 'Color', 'r');
    Cmd.XLim = [0 700e2];
    Cmd.XAxis.Exponent = 2;

    ylabel('$C_{m_{\delta_{e}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 16);
    grid on;
    
    Cm0.YLim = [-0.005, 0.01];
    Cma.YLim = [-0.5, 0];
    Cmq.YLim = [-6, 4];
    Cmd.YLim = [-0.7, 0];
    
figure('Name', 'CY')

    CY0 = subplot(3,2,1);
    plot(ACY(1,:),'Color', 'b'); hold on;
    plot(fail1, ACY(1,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(1,:), '--', 'Color', 'r');
    CY0.XLim = [0 700e2];
    CY0.XAxis.Exponent = 2;

    ylabel('$C_{Y_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CYa = subplot(3,2,2);
    plot(ACY(2,:),'Color', 'b'); hold on;
    plot(fail1, ACY(2,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(2,:), '--', 'Color', 'r');
    CYa.XLim = [0 700e2];
    CYa.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{Y_{\beta}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CYp = subplot(3,2,3);
    plot(ACY(3,:),'Color', 'b'); hold on;
    plot(fail1, ACY(3,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(3,:), '--', 'Color', 'r');
    CYp.XLim = [0 700e2];
    CYp.XAxis.Exponent = 2;

    ylabel('$C_{Y_{p}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CYr = subplot(3,2,4);
    plot(ACY(4,:),'Color', 'b'); hold on;
    plot(fail1, ACY(4,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(4,:), '--', 'Color', 'r');
    CYr.XLim = [0 700e2];
    CYr.XAxis.Exponent = 2;

    ylabel('$C_{Y_{r}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    CYda = subplot(3,2,5);
    plot(ACY(5,:),'Color', 'b'); hold on;
    plot(fail1, ACY(5,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(5,:), '--', 'Color', 'r');
    CYda.XLim = [0 700e2];
    CYda.XAxis.Exponent = 2;

    ylabel('$C_{Y_{\delta_{a}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    CYdr = subplot(3,2,6);
    plot(ACY(6,:),'Color', 'b'); hold on;
    plot(fail1, ACY(6,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCY(6,:), '--', 'Color', 'r');
    CYdr.XLim = [0 700e2];
    CYdr.XAxis.Exponent = 2;

    ylabel('$C_{Y_{\delta_{r}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    CY0.YLim = [-0.02, 0.005];
    CYa.YLim = [-1, -0.6];
    CYp.YLim = [-0.4, 0.1];
    CYr.YLim = [0, 2];
    CYda.YLim = [-0.06, 0.04];
    CYdr.YLim = [0.1, 0.25];
    
figure('Name', 'Cl')

    Cl0 = subplot(3,2,1);
    plot(ACl(1,:),'Color', 'b'); hold on;
    plot(fail1, ACl(1,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(1,:), '--', 'Color', 'r');
    Cl0.XLim = [0 700e2];
    Cl0.XAxis.Exponent = 2;

    ylabel('$C_{l_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cla = subplot(3,2,2);
    plot(ACl(2,:),'Color', 'b'); hold on;
    plot(fail1, ACl(2,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(2,:), '--', 'Color', 'r');
    Cla.XLim = [0 700e2];
    Cla.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{l_{\beta}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Clp = subplot(3,2,3);
    plot(ACl(3,:),'Color', 'b'); hold on;
    plot(fail1, ACl(3,fail1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(3,:), '--', 'Color', 'r');
    Clp.XLim = [0 700e2];
    Clp.XAxis.Exponent = 2;

    ylabel('$C_{l_{p}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Clr = subplot(3,2,4);
    plot(ACl(4,:),'Color', 'b'); hold on;
    plot(fail1, ACl(4,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(4,:), '--', 'Color', 'r');
    Clr.XLim = [0 700e2];
    Clr.XAxis.Exponent = 2;

    ylabel('$C_{l_{r}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Clda = subplot(3,2,5);
    plot(ACl(5,:),'Color', 'b'); hold on;
    plot(fail1, ACl(5,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(5,:), '--', 'Color', 'r');
    Clda.XLim = [0 700e2];
    Clda.XAxis.Exponent = 2;

    ylabel('$C_{l_{\delta_{a}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    Cldr = subplot(3,2,6);
    plot(ACl(6,:),'Color', 'b'); hold on;
    plot(fail1, ACl(6,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCl(6,:), '--', 'Color', 'r');
    Cldr.XLim = [0 700e2];
    Cldr.XAxis.Exponent = 2;

    ylabel('$C_{l_{\delta_{r}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    Cl0.YLim = [-0.06, 0.01];
    Cla.YLim = [-0.25, -0.05];
    Clp.YLim = [-0.55, -0.35];
    Clr.YLim = [0.1, 0.25];
    Clda.YLim = [-0.2, -0.05];
    Cldr.YLim = [-0.02, 0.1];
    
figure('Name', 'Cn')

    Cn0 = subplot(3,2,1);
    plot(ACn(1,:),'Color', 'b'); hold on;
    plot(fail1, ACn(1,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(1,:), '--', 'Color', 'r');
    Cn0.XLim = [0 700e2];
    Cn0.XAxis.Exponent = 2;

    ylabel('$C_{n_{0}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cna = subplot(3,2,2);
    plot(ACn(2,:),'Color', 'b'); hold on;
    plot(fail1, ACn(2,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(2,:), '--', 'Color', 'r');
    Cna.XLim = [0 700e2];
    Cna.XAxis.Exponent = 2;

    legend('ANDI Fail', 'Failure', 'ANDI no Fail', 'FontSize', 10);
    ylabel('$C_{n_{\beta}}(k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cnp = subplot(3,2,3);
    plot(ACn(3,:),'Color', 'b'); hold on;
    plot(fail1, ACn(3,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(3,:), '--', 'Color', 'r');
    Cnp.XLim = [0 700e2];
    Cnp.XAxis.Exponent = 2;

    ylabel('$C_{n_{p}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cnr = subplot(3,2,4);
    plot(ACn(4,:),'Color', 'b'); hold on;
    plot(fail1, ACn(4,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(4,:), '--', 'Color', 'r');
    Cnr.XLim = [0 700e2];
    Cnr.XAxis.Exponent = 2;

    ylabel('$C_{n_{r}} (k)$','Interpreter','Latex','FontSize', 16);
    grid on;

    Cnda = subplot(3,2,5);
    plot(ACn(5,:),'Color', 'b'); hold on;
    plot(fail1, ACn(5,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(5,:), '--', 'Color', 'r');
    Cnda.XLim = [0 700e2];
    Cnda.XAxis.Exponent = 2;

    ylabel('$C_{n_{\delta_{a}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    Cndr = subplot(3,2,6);
    plot(ACn(6,:),'Color', 'b'); hold on;
    plot(fail1, ACn(6,fail1-1), 'x', 'Color', 'r','MarkerSize', 10);
    plot(CCn(6,:), '--', 'Color', 'r');
    Cndr.XLim = [0 700e2];
    Cndr.XAxis.Exponent = 2;

    ylabel('$C_{n_{\delta_{r}}} (k)$','Interpreter','Latex','FontSize', 16);
    xlabel('$ k\ [-]$','Interpreter','Latex','FontSize', 14);
    grid on;
    
    Cn0.YLim = [-0.006, 0.002];
    Cna.YLim = [0.05, 0.2];
    Cnp.YLim = [-0.2, -0.02];
    Cnr.YLim = [-0.25, -0.05];
    Cnda.YLim = [-0.08, 0.02];
    Cndr.YLim = [-0.1, -0.06];

