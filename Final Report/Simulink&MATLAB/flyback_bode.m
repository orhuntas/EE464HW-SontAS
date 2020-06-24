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
% Control to Output Transfer Function of the Flyback Converter
s = tf('s');
Gvd = ((N2/(N1*D_p*D_p))*(Vs-s*(I_Lm*Lm)))/(1+s*(Lm*((N2/N1)^2)/(R*D_p*D_p))+(s^2)*(Lm*C*((N2/N1)^2)/(D_p*D_p)));
Gvd2 = ((N2/(N1*D_p*D_p))*(Vs-s*(I_Lm*Lm))*(1+(s*Rc*C)))/(1+s*(Lm*((N2/N1)^2)/(R*D_p*D_p))+(s^2)*(Lm*C*((N2/N1)^2)/(D_p*D_p)));

Gvd_zeros = zero(Gvd);
Gvd_poles = pole(Gvd);
figure(1);
bode(Gvd);
grid on;
hold on;
bode(Gvd2);
legend('ideal','non-ideal');
hold off;