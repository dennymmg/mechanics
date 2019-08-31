// Forced oscillations - variation of theta with frequency omega
// scilab code to replicate plot in figure 6.6 in p.174 of ref[1]
// theta --> phase difference between displacement and frequency
// omega --> frequency of sinusoidal driving force

// Author: Denny
// Date: 31 Aug 2019
// ref[1]: R G Takwale & P S Puranik, Introduction to classical mechanics,
//         1979 McGraw Hill Education (India) Pvt Ltd, 55th reprint 2016
//         ISBN: 0-07-096617-6

mu1 = 0.01; mu2 = 1; mu3 = 4;
omega = 0:0.05:10;
omega_0 = 4.56;

theta_mu1 = atand(2*mu1*omega, (omega_0^2 - omega^2));
theta_mu2 = atand(2*mu2*omega, (omega_0^2 - omega^2));
theta_mu3 = atand(2*mu3*omega, (omega_0^2 - omega^2));

plot(omega,theta_mu1,'g', omega,theta_mu2,'b', omega,theta_mu3,'r');
title('Phase difference theta vs frequency omega')
xlabel("omega")
ylabel("theta(in degrees)")
legend(['mu = 0.01';'mu = 1';'mu = 4'],[4]);
