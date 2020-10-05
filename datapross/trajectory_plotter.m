load('INDI_nofail\position.mat')

% load('INDI_fail\reset.mat')
% fail = find(reset(:,4));

z = pos(:,1);
x = pos(:,2);
y = pos(:,3);

f = figure('Name','Trajectory');
ax = axes('Parent', f);

% plot3(x(1:fail),y(1:fail),z(1:fail), 'Color', 'b' ); hold on;
% plot3(x(fail),y(fail),z(fail), 'Color', 'r', 'Marker', 'x' ); hold on;
% plot3(x(fail:end),y(fail:end),z(fail:end), '--', 'Color', 'r');

plot3(x,y, z, 'Color', 'b' ); hold on;

axis equal;
ax.ZLim = [0 3000];
set(ax,'Ydir','reverse');
set(ax, 'View', [35,25]);
xlabel('X [m]','FontSize', 14,'Interpreter','Latex');
ylabel('Y [m]','FontSize', 14,'Interpreter','Latex');
zlabel('Z [m]','FontSize', 14,'Interpreter','Latex');
title('Aircraft Trajectory', 'FontSize', 18);
grid on;
hold off;
