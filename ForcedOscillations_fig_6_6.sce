// Forced oscillations - variation of theta with frequency omega
// scilab code to replicate plot in figure 6.6 in p.174 of ref[1]
// theta --> phase difference between displacement and frequency
// omega --> frequency of sinusoidal driving force

// Author: Denny
// Date: 31 Aug 2019
// ref[1]: R G Takwale & P S Puranik, Introduction to classical mechanics,
//         1979 McGraw Hill Education (India) Pvt Ltd, 55th reprint 2016
//         ISBN: 0-07-096617-6

mu = 0.1;
omega = 0:0.05:10;
omega_0 = 4.56;

theta = atand(2*mu*omega, (omega_0^2 - omega^2));

plot(omega,theta);
