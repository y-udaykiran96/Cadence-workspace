% nmos characteristics
nmos_Id_Vds=csvread('nmos/Id_Vds.csv');
dc = nmos_Id_Vds(:, 1);
col2 = nmos_Id_Vds(:, 2);
col3 = nmos_Id_Vds(:, 3);
col4 = nmos_Id_Vds(:, 4);
col5 = nmos_Id_Vds(:, 5);
col6 = nmos_Id_Vds(:, 6);
col7 = nmos_Id_Vds(:, 7);
col8 = nmos_Id_Vds(:, 8);
col9 = nmos_Id_Vds(:, 9);
col10 = nmos_Id_Vds(:, 10);
col11 = nmos_Id_Vds(:, 11);
figure(11)
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
hold on
plot(dc, col8, '--r','LineWidth',2)
hold on
plot(dc, col9, '--b','LineWidth',2)
hold on
plot(dc, col10, '--g','LineWidth',2)
hold on
plot(dc, col11, '--m','LineWidth',2)
hold on
title('NMOS Id-Vds')
xlabel('Vds')
ylabel('Id')
grid on


nmos_Id_Vgs=csvread('nmos/Id_Vgs.csv');
dc = nmos_Id_Vgs(:, 1);
col2 = nmos_Id_Vgs(:, 2);
col3 = nmos_Id_Vgs(:, 3);
col4 = nmos_Id_Vgs(:, 4);
col5 = nmos_Id_Vgs(:, 5);
col6 = nmos_Id_Vgs(:, 6);
col7 = nmos_Id_Vgs(:, 7);
col8 = nmos_Id_Vgs(:, 8);
col9 = nmos_Id_Vgs(:, 9);
col10 = nmos_Id_Vgs(:, 10);
col11 = nmos_Id_Vgs(:, 11);
figure(12)
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
hold on
plot(dc, col8, '--r','LineWidth',2)
hold on
plot(dc, col9, '--b','LineWidth',2)
hold on
plot(dc, col10, '--g','LineWidth',2)
hold on
plot(dc, col11, '--m','LineWidth',2)
hold on

title('NMOS Id-Vgs')
xlabel('Vgs')
ylabel('Id')
grid on


%nmos inverter with 1v
nmos_inverter = csvread('nmos/inverter_dc_1_5.csv');
dc = nmos_inverter(:,1);
Vout = nmos_inverter(:,2);
Vin = nmos_inverter(:,3);
figure(13)
plot(dc, Vin, 'g','LineWidth',2)
hold on
plot(dc, Vout, 'r','LineWidth',2)
title('NMOS inverter')
xlabel('Vdc')
ylabel('Vout')
grid on


%nmos inverter with pulse
nmos_inverter_pulse = csvread('nmos/inverter_pulse.csv');
dc = nmos_inverter_pulse(:,1);
Vout = nmos_inverter_pulse(:,2);
Vin = nmos_inverter_pulse(:,3);
figure(14)
title('NTFET inverter with pulse input')
subplot(2,1,1)
plot(dc, Vin, 'g','LineWidth',2)
title('input')
xlabel('Time')
ylabel('V')
grid on
subplot(2,1,2)
plot(dc, Vout,'r','LineWidth',2)
title('output')
ylabel('V')
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ntfet characteristics
ntfet_Id_Vds=csvread('ntfet/Id_Vds.csv');
dc = ntfet_Id_Vds(:, 1);
col2 = ntfet_Id_Vds(:, 2);
col3 = ntfet_Id_Vds(:, 3);
col4 = ntfet_Id_Vds(:, 4);
col5 = ntfet_Id_Vds(:, 5);
col6 = ntfet_Id_Vds(:, 6);
col7 = ntfet_Id_Vds(:, 7);
figure(21)
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
title('NTFET Id-Vds')
xlabel('Vds')
ylabel('Id')
grid on

ntfet_Id_Vgs=csvread('ntfet/Id_Vgs.csv');
dc = ntfet_Id_Vgs(:, 1);
col2 = ntfet_Id_Vgs(:, 2);
col3 = ntfet_Id_Vgs(:, 3);
col4 = ntfet_Id_Vgs(:, 4);
col5 = ntfet_Id_Vgs(:, 5);
col6 = ntfet_Id_Vgs(:, 6);
col7 = ntfet_Id_Vgs(:, 7);
figure(22)
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
title('NTFET Id-Vgs')
xlabel('Vgs')
ylabel('Id')
grid on

ntfet_Id_Vgs_ambipolar=csvread('ntfet/Id_Vgs_ambipolar.csv');
dc = ntfet_Id_Vgs_ambipolar(:, 1);
col2 = ntfet_Id_Vgs_ambipolar(:, 2);
col3 = ntfet_Id_Vgs_ambipolar(:, 3);
col4 = ntfet_Id_Vgs_ambipolar(:, 4);
col5 = ntfet_Id_Vgs_ambipolar(:, 5);
col6 = ntfet_Id_Vgs_ambipolar(:, 6);
col7 = ntfet_Id_Vgs_ambipolar(:, 7);
figure(23)
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
title('NTFET ambipolar characterisitcs')
xlabel('Vgs')
ylabel('Id')
grid on

ntfet_Id_Vds_ndr=csvread('ntfet/Id_Vds_ndr.csv');
dc = ntfet_Id_Vds_ndr(:, 1);
col2 = ntfet_Id_Vds_ndr(:, 2);
col3 = ntfet_Id_Vds_ndr(:, 3);
col4 = ntfet_Id_Vds_ndr(:, 4);
col5 = ntfet_Id_Vds_ndr(:, 5);
col6 = ntfet_Id_Vds_ndr(:, 6);
col7 = ntfet_Id_Vds_ndr(:, 7);
figure(24)
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
title('NTFET NDR characteristics')
xlabel('Vds')
ylabel('Id')
grid on

ntfet_inverter=csvread('ntfet/inverter_dc.csv');
dc = ntfet_inverter(:, 1);
Vout = ntfet_inverter(:, 2);
Vin = ntfet_inverter(:, 3);
figure(25)
plot(dc, Vin, 'g','LineWidth',2)
hold on
plot(dc, Vout, 'r','LineWidth',2)
title('NTFET inverter DC analysis')
xlabel('dc V')
ylabel('V')
grid on

ntfet_inverter_pulse=csvread('ntfet/inverter_pulse.csv');
dc = ntfet_inverter_pulse(:, 1);
Vout = ntfet_inverter_pulse(:, 2);
Vin = ntfet_inverter_pulse(:, 3);
figure(26)
subplot(2,1,1)
plot(dc, Vin, 'g','LineWidth',2)
title('NTFET inverter input')
xlabel('Time')
ylabel('V')
grid on
subplot(2,1,2)
plot(dc,Vout,'r','LineWidth',2)
title('NTFET inverter output')
ylabel('V')
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% HNTFET characteristics
hntfet_Id_Vds=csvread('hntfet/Id_Vds.csv');
dc = hntfet_Id_Vds(:, 1);
col2 = hntfet_Id_Vds(:, 2);
col3 = hntfet_Id_Vds(:, 3);
col4 = hntfet_Id_Vds(:, 4);
col5 = hntfet_Id_Vds(:, 5);
col6 = hntfet_Id_Vds(:, 6);
col7 = hntfet_Id_Vds(:, 7);
figure(31)
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
figure(32)
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
figure(33)
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
figure(34)
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
figure(35)
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
figure(36)
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