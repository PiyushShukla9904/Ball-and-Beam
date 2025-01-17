m = 0.111;
R = 0.015;
g = -9.8;
L = 1.0;
d = 0.03;
J = 9.99e-6;
s = tf('s');

P_ball = -m*g*d/L/(J/R^2+m)/s^2                   % P_ball = 0.21/(s^2)

%Pole-Zero Map, As it is Type-II system It has Two Poles at Origin
%Since the poles are not strictly in the Left Half plane,the open loop
%system will be unstable.
%pzmap(P_ball)


% ball's response to a step input on the motor servo gear angle $\theta$ (1-radian step).
step(P_ball)
% We can see the unstable output in open loop.

%root locus
rlocus(P_ball)

%sgrid(0.70, 1.9)
%axis([-5 5 -2 2])


%Bode Plot 
bode(P_ball)                    %phase margin is zero.




