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
figure(1)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'b','LineWidth',2)
hold on
plot(dc, col4, 'g','LineWidth',2)
hold on
plot(dc, col5, 'y','LineWidth',2)
hold on
plot(dc, col6, 'r','LineWidth',2)
hold on
plot(dc, col7, 'r','LineWidth',2)
hold on
plot(dc, col8, 'r','LineWidth',2)
hold on
plot(dc, col9, 'r','LineWidth',2)
hold on
plot(dc, col10, 'r','LineWidth',2)
hold on
plot(dc, col11, 'r','LineWidth',2)
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
figure(2)
plot(dc, col2, 'r','LineWidth',2)
hold on
plot(dc, col3, 'r','LineWidth',2)
hold on
plot(dc, col4, 'r','LineWidth',2)
hold on
plot(dc, col5, 'r','LineWidth',2)
hold on
plot(dc, col6, 'r','LineWidth',2)
hold on
plot(dc, col7, 'r','LineWidth',2)
hold on
plot(dc, col8, 'r','LineWidth',2)
hold on
plot(dc, col9, 'r','LineWidth',2)
hold on
plot(dc, col10, 'r','LineWidth',2)
hold on
plot(dc, col11, 'r','LineWidth',2)
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
figure(4)
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
figure(6)
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