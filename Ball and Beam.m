m = 0.11; 
R = 0.015; 
g = -9.8;
d = 0.03; 
L =  1.0; 
J =  9.99e-6; 
s = tf('s');
P_ball = -m*g*d/L/(J/R^2+m)/s^2;

Kp = 1;
C = pid(Kp);

sys_cl=feedback(C*P_ball,1);

step(0.25*sys_cl)
axis([0 70 0 0.5])
