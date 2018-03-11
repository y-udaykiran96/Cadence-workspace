% HNTFET characteristics
hntfet_Id_Vds=csvread('hntfet/Id_Vds.csv');
dc = hntfet_Id_Vds(:, 1);
col2 = hntfet_Id_Vds(:, 2);
col3 = hntfet_Id_Vds(:, 3);
col4 = hntfet_Id_Vds(:, 4);
col5 = hntfet_Id_Vds(:, 5);
col6 = hntfet_Id_Vds(:, 6);
col7 = hntfet_Id_Vds(:, 7);
figure(1)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'b','LineWidth',2)
hold on
plot(dc, col4, 'g','LineWidth',2)
hold on
plot(dc, col5, 'y','LineWidth',2)
hold on
plot(dc, col6, 'm','LineWidth',2)
hold on
plot(dc, col7, 'c','LineWidth',2)
title('HNTFET Id-Vds')
xlabel('Vds')
ylabel('Id')
grid on

hntfet_Id_Vgs=csvread('hntfet/Id_Vgs.csv');
dc = hntfet_Id_Vgs(:, 1);
col2 = hntfet_Id_Vgs(:, 2);
col3 = hntfet_Id_Vgs(:, 3);
col4 = hntfet_Id_Vgs(:, 4);
col5 = hntfet_Id_Vgs(:, 5);
col6 = hntfet_Id_Vgs(:, 6);
col7 = hntfet_Id_Vgs(:, 7);
figure(2)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'b','LineWidth',2)
hold on
plot(dc, col4, 'g','LineWidth',2)
hold on
plot(dc, col5, 'y','LineWidth',2)
hold on
plot(dc, col6, 'm','LineWidth',2)
hold on
plot(dc, col7, 'c','LineWidth',2)
title('HNTFET Id-Vgs')
xlabel('Vgs')
ylabel('Id')
grid on

hntfet_Id_Vgs_ambipolar=csvread('hntfet/Id_Vgs_ambipolar.csv');
dc = hntfet_Id_Vgs_ambipolar(:, 1);
col2 = hntfet_Id_Vgs_ambipolar(:, 2);
col3 = hntfet_Id_Vgs_ambipolar(:, 3);
col4 = hntfet_Id_Vgs_ambipolar(:, 4);
col5 = hntfet_Id_Vgs_ambipolar(:, 5);
col6 = hntfet_Id_Vgs_ambipolar(:, 6);
col7 = hntfet_Id_Vgs_ambipolar(:, 7);
figure(3)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'b','LineWidth',2)
hold on
plot(dc, col4, 'g','LineWidth',2)
hold on
plot(dc, col5, 'y','LineWidth',2)
hold on
plot(dc, col6, 'm','LineWidth',2)
hold on
plot(dc, col7, 'c','LineWidth',2)
title('HNTFET ambipolar characteristics')
xlabel('Vgs')
ylabel('Id')
grid on

hntfet_Id_Vds_ndr=csvread('hntfet/Id_Vds_ndr.csv');
dc = hntfet_Id_Vds_ndr(:, 1);
col2 = hntfet_Id_Vds_ndr(:, 2);
col3 = hntfet_Id_Vds_ndr(:, 3);
col4 = hntfet_Id_Vds_ndr(:, 4);
col5 = hntfet_Id_Vds_ndr(:, 5);
col6 = hntfet_Id_Vds_ndr(:, 6);
col7 = hntfet_Id_Vds_ndr(:, 7);
figure(4)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'b','LineWidth',2)
hold on
plot(dc, col4, 'g','LineWidth',2)
hold on
plot(dc, col5, 'y','LineWidth',2)
hold on
plot(dc, col6, 'm','LineWidth',2)
hold on
plot(dc, col7, 'c','LineWidth',2)
title('HNTFET NDR characterisitics')
xlabel('Vds')
ylabel('Id')
grid on

hntfet_inverter_dc = csvread('hntfet/inverter_dc.csv')
dc = hntfet_inverter_dc(:,1);
Vout = hntfet_inverter_dc(:,2);
Vin = hntfet_inverter_dc(:,3);
figure(5)
plot(dc, Vin, 'g','LineWidth',2)
hold on
plot(dc, Vout, 'r','LineWidth',2)
title('HNTFET inverter DC analysis')
xlabel('dc V')
ylabel('V')
grid on


hntfet_inverter=csvread('hntfet/inverter_pulse.csv');
dc = hntfet_inverter(:, 1);
Vout = hntfet_inverter(:, 2);
Vin = hntfet_inverter(:, 3);
figure(6)
subplot(2,1,1)
plot(dc, Vin, 'g','LineWidth',2)
title('HNTFET inverter input')
xlabel('Time')
ylabel('V')
grid on
subplot(2,1,2)
plot(dc,Vout,'r','LineWidth',2)
title('HNTFET inverter output')
ylabel('V')
grid on