function olps = m_pcbm_olps

olps.type.CF = 1; olps.type.CA1 = 2; olps.type.CA2 = 3; 
olps.type.C = 4; olps.type.CT1 = 5; olps.type.CT2 = 6; 
olps.type.CT3 = 7;
olps.type.O = 8; olps.type.OS = 9;
olps.type.HA = 10; olps.type.HC = 11; olps.type.Cl = 12;




olps.terms.q(1) = 0.0; olps.terms.eps(1) = 0.07; olps.terms.sig(1) = 3.55; %CF
olps.terms.q(2) = -0.115; olps.terms.eps(2) = 0.07; olps.terms.sig(2) = 3.55; %CA1
olps.terms.q(3) = 0.0; olps.terms.eps(3) = 0.07; olps.terms.sig(3) = 3.55; %CA2
olps.terms.eps(2) = (0.2764/0.3305)*olps.terms.eps(2);
olps.terms.eps(3) = (0.2764/0.3305)*olps.terms.eps(3);
olps.terms.sig(2) = (3.47/3.55)*olps.terms.sig(2);
olps.terms.sig(3) = (3.47/3.55)*olps.terms.sig(3);
olps.terms.q(4) = 0.7; olps.terms.eps(4) = 0.105; olps.terms.sig(4) = 3.75; %C
olps.terms.q(5) = -0.12; olps.terms.eps(5) = 0.066; olps.terms.sig(5) = 3.5; %CT1
olps.terms.q(6) = -0.18; olps.terms.eps(6) = 0.066; olps.terms.sig(6) = 3.5; %CT2
olps.terms.q(7) = -0.03; olps.terms.eps(7) = 0.066; olps.terms.sig(7) = 3.5; %CT3
olps.terms.q(8) = -0.5; olps.terms.eps(8) = 0.21; olps.terms.sig(8) = 2.96; %O
olps.terms.q(9) = -0.17; olps.terms.eps(9) = 0.14; olps.terms.sig(9) = 2.90; %OS
olps.terms.q(10) = 0.115; olps.terms.eps(10) = 0.03; olps.terms.sig(10) = 2.42; %HA
olps.terms.q(11) = 0.06; olps.terms.eps(11) = 0.03; olps.terms.sig(11) = 2.50; %HC

olps.terms.A = 4*olps.terms.eps.*(olps.terms.sig.^12); olps.terms.B = 4*olps.terms.eps.*(olps.terms.sig.^6); 

olps.terms.k(1) = 938.0; olps.terms.r0(1) = 1.40; %CA-CA
olps.terms.k(2) = 634.0; olps.terms.r0(2) = 1.51; %CA-CT
olps.terms.k(3) = 734.0; olps.terms.r0(3) = 1.08; %CA-HA
olps.terms.k(4) = 536.0; olps.terms.r0(4) = 1.529; %CT-CT
olps.terms.k(5) = 634.0; olps.terms.r0(5) = 1.51; %CT-CF
olps.terms.k(6) = 634.0; olps.terms.r0(6) = 1.51; %CT-C
olps.terms.k(7) = 640.0; olps.terms.r0(7) = 1.41; %CT-OS
olps.terms.k(8) = 680.0; olps.terms.r0(8) = 1.09; %CT-HC
olps.terms.k(9) = 1040.0; olps.terms.r0(9) = 1.229; %C-O
olps.terms.k(10) = 428.0; olps.terms.r0(10) = 1.327; %C-OS
olps.terms.k(11) = 938.0; olps.terms.r0(11) = 1.458; %CF-CF

olps.terms.k3(1) = 126.0; olps.terms.theta(1) = 120.0; %CA-CA-CA
olps.terms.k3(2) = 140.0; olps.terms.theta(2) = 120.0; %CA-CA-CT
olps.terms.k3(3) = 70.0;  olps.terms.theta(3) = 120.0;  %CA-CA-HA
olps.terms.k3(4) = 116.7; olps.terms.theta(4) = 112.7; %CT-CT-CT
olps.terms.k3(5) = 126.0; olps.terms.theta(5) = 114.0; %CT-CT-CA
olps.terms.k3(6) = 126.0; olps.terms.theta(6) = 114.0; %CT-CT-CF
olps.terms.k3(7) = 80.0;  olps.terms.theta(7) = 109.5;  %CF-CT-CF
olps.terms.k3(8) = 126.0; olps.terms.theta(8) = 111.1; %CT-CT-C
olps.terms.k3(9) = 75.0;  olps.terms.theta(9) = 110.7;  %CT-CT-HC
olps.terms.k3(10) = 70.0; olps.terms.theta(10) = 109.5;%C -CT-HC
olps.terms.k3(11) = 70.0; olps.terms.theta(11) = 109.5;%OS-CT-HC  
olps.terms.k3(11) = 66.0; olps.terms.theta(12) = 107.8;%HC-CT-HC  
olps.terms.k3(11) = 126.0; olps.terms.theta(13) = 111.1;%CF-CT-CT  
olps.terms.k3(11) = 80.0; olps.terms.theta(14) = 109.5;%CF-CT-CA  
olps.terms.k3(11) = 162.0; olps.terms.theta(15) = 111.4;%CT-C -OS  
olps.terms.k3(11) = 160.0; olps.terms.theta(16) = 120.4;%CT-C -O  
olps.terms.k3(11) = 166.0; olps.terms.theta(17) = 123.4;%OS-C -O  
olps.terms.k3(11) = 166.0; olps.terms.theta(18) = 116.9;%C -OS-CT  
olps.terms.k3(11) = 140.0; olps.terms.theta(19) = 120.0;%CF-CF-CT  
olps.terms.k3(11) = 126.0; olps.terms.theta(20) = 108.0;%CF-CF-CF 

 olps.terms.V1(1) = 0.0;   olps.terms.V2(1) = 14.5;  olps.terms.V3(1) = 0.0;   olps.terms.V4(1) = 0.0;%* -CA-CA-* 
 olps.terms.V1(2) = 0.0;   olps.terms.V2(2) = 0.0;   olps.terms.V3(2) = 0.0;   olps.terms.V4(2) = 0.0;%CA-CA-CT-CT 
 olps.terms.V1(3) = 0.0;   olps.terms.V2(3) = 0.0;   olps.terms.V3(3) = 0.0;   olps.terms.V4(3) = 0.0;%CA-CA-CT-CF
 olps.terms.V1(4) = 1.30;  olps.terms.V2(4) =-0.05;  olps.terms.V3(4) = 0.2;   olps.terms.V4(4) = 0.0;%CT-CT-CT-CT 
 olps.terms.V1(5) = 0.0;   olps.terms.V2(5) = 0.0;   olps.terms.V3(5) = 0.3;   olps.terms.V4(5) = 0.0;%CT-CT-CT-HC 
 olps.terms.V1(6) = 0.0;   olps.terms.V2(6) = 0.0;   olps.terms.V3(6) = 0.3;   olps.terms.V4(6) = 0.0;%HC-CT-CT-HC 
 olps.terms.V1(7) =-0.277; olps.terms.V2(7) = 1.228; olps.terms.V3(7) =-0.694; olps.terms.V4(7) = 0.0;%O -C -CT-CT
 olps.terms.V1(8) = 0.0;   olps.terms.V2(8) = 0.0;   olps.terms.V3(8) = 0.0;   olps.terms.V4(8) = 0.0;%O -C -CT-HC 
 olps.terms.V1(9) = 0.0;   olps.terms.V2(9) =-0.553; olps.terms.V3(9) = 0.0;   olps.terms.V4(9) = 0.0;%OS-C -CT-CT 
olps.terms.V1(10) = 0.0;  olps.terms.V2(10) = 0.132;olps.terms.V3(10) = 0.0;  olps.terms.V4(10) = 0.0;%OS-C -CT-HC
olps.terms.V1(11) = 4.669;olps.terms.V2(11) = 5.124;olps.terms.V3(11) = 0.0;  olps.terms.V4(11) = 0.0;%CT-C -OS-CT
olps.terms.V1(12) = 0.000;olps.terms.V2(12) = 5.124;olps.terms.V3(12) = 0.0;  olps.terms.V4(12) = 0.0;%O -C -OS-CT
olps.terms.V1(13) = 0.000;olps.terms.V2(13) = 0.000;olps.terms.V3(13) = 0.198;olps.terms.V4(13) = 0.0;%C -OS-CT-HC
olps.terms.V1(14) = 1.300;olps.terms.V2(14) =-0.05; olps.terms.V3(14) = 0.2;  olps.terms.V4(14) = 0.0;%CF-CT-CT-CT
olps.terms.V1(15) = 0.0;  olps.terms.V2(15) = 0.0;  olps.terms.V3(15) = 0.3;  olps.terms.V4(15) = 0.0;%CF-CT-CT-HC
olps.terms.V1(16) = 0.0;  olps.terms.V2(16) = 14.5; olps.terms.V3(16) = 0.0;  olps.terms.V4(16) = 0.0;%CF-CF-CT-CA
olps.terms.V1(17) = 0.0;  olps.terms.V2(17) = 14.5; olps.terms.V3(17) = 0.0;  olps.terms.V4(17) = 0.0;%CF-CF-CT-CT

olps.terms.V1 = olps.terms.V1/2; olps.terms.V2 = olps.terms.V2/2;
olps.terms.V3 = olps.terms.V3/2; olps.terms.V4 = olps.terms.V4/2;


olps.mask.c60(1:60) = olps.type.CF;

olps.mask.pcbm28(1) = olps.type.CT3; olps.mask.pcbm28(2) = olps.type.CA2; 
olps.mask.pcbm28(3:6) = olps.type.CA1; olps.mask.pcbm28(7) = olps.type.O;
olps.mask.pcbm28(8) = olps.type.OS; olps.mask.pcbm28(9) = olps.type.CA1;
olps.mask.pcbm28(10) = olps.type.CT1; olps.mask.pcbm28(11) = olps.type.CT1; 
olps.mask.pcbm28(12) = olps.type.CT1; olps.mask.pcbm28(13) = olps.type.C; 
olps.mask.pcbm28(14) = olps.type.CT2; olps.mask.pcbm28(15:19) = olps.type.HA; 
olps.mask.pcbm28(20:28) = olps.type.HC; 

olps.mask.solvent.MCB(1) = olps.type.Cl; 
olps.mask.solvent.MCB(2:3) = olps.type.CA1; 
olps.mask.solvent.MCB(4) = olps.type.HA;
olps.mask.solvent.MCB(5) = olps.type.CA1; 
olps.mask.solvent.MCB(6) = olps.type.HA;
olps.mask.solvent.MCB(7) = olps.type.CA1; 
olps.mask.solvent.MCB(8) = olps.type.HA;
olps.mask.solvent.MCB(9) = olps.type.CA1; 
olps.mask.solvent.MCB(10) = olps.type.HA;
olps.mask.solvent.MCB(11) = olps.type.CA1; 
olps.mask.solvent.MCB(12) = olps.type.HA;

olps.mask.solvent.oDCB(1) = olps.type.Cl; 
olps.mask.solvent.oDCB(2) = olps.type.Cl; 
olps.mask.solvent.oDCB(3:8) = olps.type.CA1;
olps.mask.solvent.oDCB(9:12) = olps.type.HA;

end

