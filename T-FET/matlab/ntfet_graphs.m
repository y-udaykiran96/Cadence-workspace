% ntfet characteristics
ntfet_Id_Vds=csvread('ntfet/Id_Vds.csv');
dc = ntfet_Id_Vds(:, 1);
col2 = ntfet_Id_Vds(:, 2);
col3 = ntfet_Id_Vds(:, 3);
col4 = ntfet_Id_Vds(:, 4);
col5 = ntfet_Id_Vds(:, 5);
col6 = ntfet_Id_Vds(:, 6);
col7 = ntfet_Id_Vds(:, 7);
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
title('NTFET NDR characteristics')
xlabel('Vds')
ylabel('Id')
grid on

ntfet_inverter=csvread('ntfet/inverter_dc.csv');
dc = ntfet_inverter(:, 1);
Vout = ntfet_inverter(:, 2);
Vin = ntfet_inverter(:, 3);
figure(7)
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
figure(8)
title('NTFET inverter with pulse input')
subplot(2,1,2)
subplot(2,1,1)
plot(dc, Vin, 'g','LineWidth',2)
title('NTFET inverter input')
xlabel('Time')
ylabel('V')
grid on
subplot(2,1,2)
plot(dc, Vout,'r','LineWidth',2)
title('NTFET inverter output')
ylabel('V')
grid on