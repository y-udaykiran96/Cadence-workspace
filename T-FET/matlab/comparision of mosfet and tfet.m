% Id-Vds of nmos , ntfet , hntfet
nmos_Id_Vds=csvread('nmos/Id_Vds.csv');
ntfet_Id_Vds=csvread('ntfet/Id_Vds.csv');
hntfet_Id_Vds=csvread('hntfet/Id_Vds.csv');
nmosdc = nmos_Id_Vds(:,1);
nmosV = nmos_Id_Vds(:,7);
ntfetdc = ntfet_Id_Vds(:,1);
ntfetV = ntfet_Id_Vds(:,7);
hntfetdc = hntfet_Id_Vds(:,1);
hntfetV = hntfet_Id_Vds(:,7);
figure(1)
plot(nmosdc, nmosV, 'r', 'LineWidth',2)             % NMOS
axis([0 1 0 14E-5])
hold on
plot(ntfetdc, ntfetV, 'b', 'LineWidth',2)           % NTFET
hold on
plot(hntfetdc, hntfetV, 'g', 'LineWidth',2)         % HNTFET
title('Id Vds characteristics at Vgs = 0.5v')
xlabel('Vds')
ylabel('Id')
grid on


% Id-Vgs of nmos , ntfet , hntfet
nmos_Id_Vgs=csvread('nmos/Id_Vgs.csv');
ntfet_Id_Vgs=csvread('ntfet/Id_Vgs.csv');
hntfet_Id_Vgs=csvread('hntfet/Id_Vgs.csv');
nmosdc = nmos_Id_Vgs(:,1);
nmosV = nmos_Id_Vgs(:,7);
ntfetdc = ntfet_Id_Vgs(:,1);
ntfetV = ntfet_Id_Vgs(:,7);
hntfetdc = hntfet_Id_Vgs(:,1);
hntfetV = hntfet_Id_Vgs(:,7);
figure(2)
plot(nmosdc, nmosV, 'r', 'LineWidth',2)                 % NMOS
axis([0 1 0 0.6E-3])
hold on
plot(ntfetdc, ntfetV, 'b', 'LineWidth',2)               % NTFET
hold on
plot(hntfetdc, hntfetV, 'g', 'LineWidth',2)             % HNTFET
title('Id Vgs characteristics at Vds = 0.5v')
xlabel('Vds')
ylabel('Id')
grid on


% inverter characteristics of nmos, ntfet, hntfet
nmos_inverter = csvread('nmos/inverter_dc_1_5.csv');
ntfet_inverter = csvread('ntfet/inverter_dc.csv');
hntfet_inverter = csvread('hntfet/inverter_dc.csv');
Dc = nmos_inverter(:,1);
Vin = nmos_inverter(:,3);
nmosVout = nmos_inverter(:,2);
ntfetVout = ntfet_inverter(:, 2);
hntfetVout = hntfet_inverter(:,2);
figure(3)
plot(Dc, Vin, 'c', 'LineWidth',2)
hold on
plot(Dc, nmosVout, 'r', 'LineWidth',2)              % NMOS
hold on
plot(Dc, ntfetVout, 'b', 'LineWidth',2)            % NTFET
hold on
plot(Dc, hntfetVout, 'g', 'LineWidth',2)          % HNTFET
title('inverter characteristics')
xlabel('Vdc')
ylabel('Vout')
grid on


% Ambipolar nature
ntfet_ambipolar=csvread('ntfet/Id_Vgs_ambipolar.csv');
hntfet_ambipolar=csvread('hntfet/Id_Vgs_ambipolar.csv');
ntfetDc = ntfet_ambipolar(:,1);
ntfetN = ntfet_ambipolar(:,7);
hntfetDc = hntfet_ambipolar(:,1);
hntfetN = hntfet_ambipolar(:,7);
figure(4)
plot(ntfetDc, ntfetN, 'b', 'LineWidth',2)           % NTFET
hold on
plot(hntfetDc, hntfetN, 'g', 'LineWidth',2)         % HNTFET
title('Ambipolar Nature')
xlabel('Vgs')
ylabel('Id')
grid on




