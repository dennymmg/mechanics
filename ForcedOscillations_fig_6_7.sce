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
mu1 = 0.01; mu2 = 1; mu3 = 4;
omega = 0:0.05:10;
omega_0 = 4.56;

A1 = (F0/m) / sqrt((omega_0^2 - omega.^2)^2 + 4*mu1^2*omega.^2);
