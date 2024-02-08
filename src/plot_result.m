load data2.mat

time = ppm(1,:);
spppm = ppm(2,:);
c3 = ppm(3,:);
gh2 = ppm(4,:);
ppmpv1 = ppm(5,:);
ppmpv2 = ppm(6,:);

 %%%%%%%%%%%%%%%%%%%%%---plotting----%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
hold off

subplot(3,1,1)
hold off
plot(time,spppm,'g:','LineWidth',2)
hold on
plot(time,ppmpv2,'k-','LineWidth',2)
legend('setpoint and PV ppm');
ylabel('ppm')

subplot(3,1,2)
hold off
plot(time,c3,'g', 'Linewidth',2)
hold on
legend('Disturbance')
ylabel('kg/hr')
ylim([0.015, 0.018])
xlim([800,1000])

subplot(3,1,3)
hold off
plot(time,gh2,'k-','Linewidth',2)
hold on
legend('Hydrogen')
ylabel('kg H2')

figure(2)
plot(time,ppmpv1)
hold on
plot(time,ppmpv2)
hold on
plot(time,spppm,'g:','LineWidth',2)