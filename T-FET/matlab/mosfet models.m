%comparing level 1,2,3 models with Vds
clear
esi = 11.7*8.854e-14;
eox = 3.9*8.854e-14;
q = 1.6e-19;
Plt = 0.026;
ni = 1.45e10;
N=30;
M=3;
Nb = 1e17;
Tox = 100e-8;
Vfb= -0.8; 
Uneff = 400;
W=100e-4;
L=50e-4;
Plf = Plt*log(Nb/ni);
Cox = eox/Tox;
gb= sqrt(2*q*esi*Nb)/Cox;
Vto = Vfb+2*Plf+gb*sqrt(2*Plf);
beta = Uneff*Cox*(W/L);
Plo = 2*Plf+4*Plt;
Vgb = linspace(1,3,M);
Vsb = 0;
Vdb = linspace(0,3,N);
%CSM calculations
%For each value of Vgb the PlsS
for m=1:M;
    PlsS(m)= 0.9;
end
%For each value of Vgb and Vdb the PlsD
for m = 1:M;
    Vg = Vgb(m);
    xo = Plf;
    for n = 1:N
        PlsD(n,m) = 0.9;
    end
end
% I-V plot
for m = 1:M;
    for n = 1: N
        IdrS(m) = (Vgb(m)-Vfb)*PlsS(m)-(PlsS(m)^2)/2-(2/3)*gb*(PlsS(m)^(3/2));
        IdrD(n,m) = (Vgb(m)-Vfb)*PlsD(n,m)-(PlsD(n,m)^2)/2-(2/3)*gb*(PlsD(n,m)^(3/2));
        Idr(n,m) = beta*(-IdrS(m)+IdrD(n,m));
        QnS(m) = -Cox*(Vgb(m)-Vfb-PlsS(m)-gb*PlsS(m));
        QnD(n,m) = -Cox*(Vgb(m)-Vfb-PlsD(n,m)-gb*PlsD(n,m));
        Idf(n,m) = Plt*(beta/Cox)*(QnD(n,m)-QnS(m));
        Ids(n,m) = Idr(n,m)+Idf(n,m);
    end
end
%level-1 calculations 
VTO=Vfb+Plo+gb*sqrt(Plo);GAMMA=gb;
Vds=Vdb-Vsb;Vgs=Vgb-Vsb;
for m=1:M;
    Vdsat(m)=Vgs(m)-VTO;
    for n=1:N;
        if Vgs(m)<VTO
            Ids1(n,m)=0;
        elseif Vds(n)<Vdsat(m)
            Ids1(n,m)=beta*((Vgs(m)-VTO)*Vds(n)-(Vds(n)^2/2));
        else
            Ids1(n,m)=beta*(Vdsat(m)^2/2);
        end
   end
end

% level 2 calculations
for m=1:M;
    Vdsat2(m)= Vgs(m)-Vfb-Plo+(gb^2/2)-gb*sqrt(Vgs(m)-Vfb-Vsb+gb^2/4);
    for n=1:N
        if Vgs(m)<VTO
            Ids2(n,m) = 0;
        elseif Vds(n) < Vdsat2(m)
            Ids2(n,m) = beta*((Vgs(m)-Vfb-Plo-(Vds(n)/2))*Vds(n)-(2/3)*gb*((Vds(n)+Plo+Vsb)^(3/2)-(2*Plf+Vsb)^(3/2)));
        else
            Ids2(n,m) = beta*((Vgs(m)-Vfb-Plo-(Vdsat2(m)/2))*Vdsat2(m)-(2/3)*gb*((Vdsat2(m)+Plo+Vsb)^(3/2)-(2*Plf+Vsb)^(3/2)));
        end
    end
end
% level 3 calculations
delta=gb/(2*sqrt(Vsb+Plo))+0.2;
for m=1:M;
    Vdsat2(m)=Vgs(m)-Vfb-Plo+(gb^2/2)-gb*sqrt(Vgs(m)-Vfb-Vsb+gb^2/4);
    for n=1:N
        if Vgs(m)<VTO
            Ids3(n,m)=0;
        else if Vds(n)<Vdsat2(m)
            Ids3(n,m)=beta*((Vgs(m)-Vfb-Plo-gb*sqrt(Vsb+Plo))*Vds(n)-((1+delta*gb)/2)*Vds(n)^2);
        else 
            Ids3(n,m)=beta*((Vgs(m)-Vfb-Plo-gb*sqrt(Vsb+Plo))*Vdsat2(m)-((1+delta*gb)/2)*Vdsat2(m)^2);
            end
        end
    end
end

subplot(2,2,1)
h1=plot(Vds,Ids1*1e3,'r')
xlabel('V_{dS}(V)')
ylabel('I_{DS}(mA)')
axis([0 3 0 0.8])
title('level 1')

subplot(2,2,2)
h2= plot(Vds,Ids2*1e3,'b')
xlabel('V_{dS}(V)')
ylabel('I_{DS}(mA)')
axis([0 3 0 0.8])
title('level 2')

subplot(2,2,3)
h3=plot(Vds,Ids3*1e3,'g')
xlabel('V_{dS}(V)')
ylabel('I_{DS}(mA)')
axis([0 3 0 0.8])
title('level 3')

subplot(2,2,4)
h4=plot(Vds,Ids3*1e3,'g',Vds,Ids2*1e3,'b',Vds,Ids1*1e3,'r')
xlabel('V_{dS}(V)')
ylabel('I_{DS}(mA)')
axis([0 3 0 0.8])
title('Comparision')
        
        