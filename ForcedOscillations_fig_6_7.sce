// Forced oscillations - variation of Amplitude A with frequency omega 
// scilab code to replicate plot in figure 6.7 in p.175 of ref[1]
// theta --> amplitude of displacement
// omega --> frequency of sinusoidal driving force

// Author: Denny
// Date:  Sept 2019
// ref[1]: R G Takwale & P S Puranik, Introduction to classical mechanics,
//         1979 McGraw Hill Education (India) Pvt Ltd, 55th reprint 2016
//         ISBN: 0-07-096617-6

F0 = 1; m = 1;
mu1 = 0.05; mu2 = 0.2; mu3 = 0.4;
omega = 0:0.05:10;
omega_0 = 4.56;

A1 = (F0/m)./sqrt((omega_0^2 - omega^2)^2 + 4*mu1^2*omega^2);
A2 = (F0/m)./sqrt((omega_0^2 - omega^2)^2 + 4*mu2^2*omega^2);
A3 = (F0/m)./sqrt((omega_0^2 - omega^2)^2 + 4*mu3^2*omega^2);

plot(omega,A1,'g', omega,A2,'b', omega,A3,'r');
title('Amplitude resonance (F0=1, m=1)');
xlabel("omega")
ylabel("A")
legend(['mu = 0.05';'mu = 0.2';'mu = 0.4'],[4]);
