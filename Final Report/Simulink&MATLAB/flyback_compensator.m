clear all
close all
% Flyback Converter Parameters
Vo = 15;
Vs = 48;
N1 = 10;
n = 1.9;
N2 = N1/n;
D = ((Vo/Vs)*(N1/N2))/(1+((Vo/Vs)*(N1/N2)));
D_p = 1-D;
fs = 45000;
Po = 60;

Lm = 28.67e-6;
C = 470e-6;
R = Vo^2/Po;
% Capacitor ESR
Rc = 20e-3;
I_Lm = (D/(D_p^2))*((N2/N1)^2)*(Vs/R);
Is = Po/Vs;
Io = Po/Vo;

% Control Parameters
Vref = 1.2;
Vosc = 1.8;

% Power Stage Poles and Zeros
wz1 = 1/(Rc*C);
wzRHP = Vs/(I_Lm*Lm);
w0 = D_p/((N2/N1)*sqrt(Lm*C));
Q = w0/(1/(C*(R+Rc)));
Q2 = w0/((1/(R*C))+(Rc/Lm));

f_ESR = wz1/(2*pi);
f_LC = w0/(2*pi);
f_RHP = wzRHP/(2*pi);

% Control to Output Transfer Function of the Flyback Converter (Power Stage)
Gd0 = (1/(D_p^2))*(N2/N1)*Vs;
s = tf('s');
% Gvd = (Gd0*(1-s*(I_Lm*Lm/Vs)))/(1+s*(Lm*((N2/N1)^2)/(R*D_p*D_p))+(s^2)*(Lm*C*((N2/N1)^2)/(D_p*D_p)));
% Gvd2 = (Gd0*(1-s*(I_Lm*Lm/Vs))*(1+(s*Rc*C)))/(1+s*(Lm*((N2/N1)^2)/(R*D_p*D_p))+(s^2)*(Lm*C*((N2/N1)^2)/(D_p*D_p)));
Gvd = Gd0*(1+(s/wz1))*(1-(s/wzRHP))/(1+(s/(w0*Q))+(s*s/(w0^2)));
% Gvd4 = Gd0*(1+(s/wz1))*(1-(s/wzRHP))/(1+(s/(w0*Q2))+(s*s/(w0^2)));

Gvd_zeros = zero(Gvd);
Gvd_poles = pole(Gvd);

% figure(1);
% subplot(2,2,1);
% bode(Gvd);
% grid on;
% subplot(2,2,2);
% bode(Gvd2);
% grid on;
% subplot(2,2,3);
% bode(Gvd3);
% grid on;
% subplot(2,2,4);
% bode(Gvd4);
% grid on;

% Combines Transfer Function of the Power Stage and the PWM Generator
G = Gvd*(1/Vosc);

fz2 = f_LC;
fz1 = 0.75*fz2;
fp2 = f_ESR;
fp3 = fs/2;

% Calculated parameters of the designed Type III A Compensator
% Cf3 = 10e-9;
% Rf3 = 1/(2*pi*Cf3*fp2);
% Rf1 = (1/(2*pi*Cf3*fz2)) - Rf3;
% Rf2 = (Rf1*Vref)/(Vo-Vref);
% % Rc1 = (2*pi*f0*L*C*Vosc)/(Vin*Cf3);
% Rc1 = 1000;
% Cc1 = 1/(2*pi*Rc1*fz1);
% Cc2 = 1/(2*pi*Rc1*fp3);
% Cf3 = 1/(2*pi*(Rf1+Rf3)*fz2);
% fp1 = 1/(2*pi*Rf1*(Cc1+Cc2));

Rc1 = 1000;
Rf1 = 8800;
Rf2 = 770;
Rf3 = 940;
Cc1 = 130e-9;
Cc2 = 7e-9;
Cf3 = 10e-9;

% Transfer Function of the designed Type III compensator
H = ((1+(s*Rc1*Cc1))*(1+(s*Cf3*(Rf1+Rf3))))/((s*Rf1*(Cc1+Cc2))*(1+(s*Rc1*Cc1*Cc2/(Cc1+Cc2)))*(1+(s*Rf3*Cf3)));
% H = (1+s*Rc1*Cc1)*(1+s*Cf3*(Rf1+Rf3))/(s*Rf1*(Cc1+Cc2)*(1+s*Rc1*Cc2)*(1+s*Rf3*Cf3));
figure(1);
bode(H);
grid on;

% Transfer Function of the Power Stage
figure(2);
bode(Gvd);
hold on;
bode(G);
grid on;
legend('Gvd','G');
hold off;

% Transfer Function of the Loop Gain of the system
GL = G*H;
figure(3);
bode(GL);
grid on;

