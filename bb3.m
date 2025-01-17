m = 0.11; 
R = 0.015; 
g = -9.8;
d = 0.03; 
L =  1.0; 
J =  9.99e-6; 
s = tf('s');
P_ball = -m*g*d/L/(J/R^2+m)/s^2;


Kp = 15;
Kd = 40;
C = pid(Kp,0,Kd);
sys_cl=feedback(C*P_ball,1);
t=0:0.01:5;
step(0.25*sys_cl)
