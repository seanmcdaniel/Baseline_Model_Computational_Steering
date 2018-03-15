// cell.p - Cell parameter file used in Tutorial #5

//	Format of file :
// x,y,z,dia are in microns, all other units are SI (Meter Kilogram Sec Amp)
// In polar mode 'r' is in microns, theta and phi in degrees 
// Control line options start with a '*'
// The format for each compartment parameter line is :
//name	parent	r	theta	phi	d	ch	dens ...
//in polar mode, and in cartesian mode :
//name	parent	x	y	z	d	ch	dens ...
// For channels, "dens" =  maximum conductance per unit area of compartment
// For spike elements, "dens" is the spike threshold
//		Coordinate mode
*relative
*cartesian
*asymmetric

//		Specifying constants
*set_compt_param	RM	5.0   //5.0
*set_compt_param	RA	2.50  //2.50
*set_compt_param	CM	0.009 //0.009
*set_compt_param     EREST_ACT	-0.07
*set_compt_param      ELEAK     -0.075  


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
// Actually, after Traub et al. J Neurophys 2003;89:909-921, will maintain
// leakage potential at ELEAK   -0.07
soma  none   0  0  15  16     Ca_s1 -55.47e12         NaF1       1875   \
                              NaP1          1.2       KDR1       1250   \
                              KA1         300         K21           1   \
                              KM1          75         CaL1          1   \
                              CaH1         10         KCs1        120   \
                              AR1         2.5         KAHPs1        0.4 

//APICAL DENDRITE COMPARTMENTS ***************************************
// apdend1 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend1  soma  0  0  50  8      Ca_d1 -16.64e12         NaF1       1250   \
                                NaP1          0.8       KDR1       1250   \
                                KA1         300         K21           1   \
                                KM1          75         CaL1          1   \
                                CaH1         10         KCd1        120   \
                                AR1           2.5       KAHPd1        0.4 

// apdend2 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend2  apdend1  0  0  50  6.66    Ca_d1 -19.99e12         NaF1        937.5 \
                                    NaP1          0.6       KDR1        937.5 \
                                    KA1          20         K21           1   \
                                    KM1          75         CaL1          1   \
                                    CaH1         10         KCd1        120   \
                                    AR1         2.5         KAHPd1        0.4


// apdend3 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend3  apdend2  0  0  50  5.32    Ca_d1 -25.02e12         NaF1         125    \
                                    NaP1          0.08      KDR1          62.5  \
                                    KA1          20         K21            1    \
                                    KM1          75         CaL1           1    \
                                    CaH1         10         KCd1         120    \
                                    AR1         2.5         KAHPd1         0.4  

// apdend4aR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend4aR  apdend3 25 0 43.3 4.00   Ca_d1 -33.28e12         NaF1       125    \
                                    NaP1          0.08      KDR1        62.5  \
                                    KA1          20         K21          1    \
                                    KM1          75         CaL1         1    \
                                    CaH1         10         KCd1       120    \
                                    AR1         2.5         KAHPd1       0.4

// apdend4bR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend4bR  apdend4aR 25 0 43.3 4.00 Ca_d1 -33.28e12         NaF1         125    \
                                    NaP1          0.08      KDR1          62.5  \
                                    KA1          20         K21            1    \
                                    KM1          75         CaL1           1    \
                                    CaH1         10         KCd1         120    \
                                    AR1         2.5         KAHPd1         0.4

// apdend5aRRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aRRR  apdend4bR 12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                       NaP1          0.08      KDR1          62.5  \
                                       KA1          20         K21            1    \
                                       KM1          75         CaL1           1    \
                                       CaH1         10         KCd1         120    \
                                       AR1         2.5         KAHPd1         0.4

// apdend5bRRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bRRR  apdend5aRRR 12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

// apdend5cRRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cRRR  apdend5bRRR 12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

// apdend5aRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aRR  apdend4bR 4.4 0 49.8 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                       NaP1          0.08      KDR1          62.5  \
                                       KA1          20         K21            1    \
                                       KM1          75         CaL1           1    \
                                       CaH1         10         KCd1         120    \
                                       AR1         2.5         KAHPd1         0.4

// apdend5bRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bRR  apdend5aRR 4.4 0 49.8 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5cRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cRR  apdend5bRR 4.4 0 49.8 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5aRLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aRLL  apdend4bR -12.9 0 48.3 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0.4

// apdend5bRLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bRLL  apdend5aRLL -12.9 0 48.3 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                            NaP1          0.08      KDR1          62.5  \
                                            KA1          20         K21            1    \
                                            KM1          75         CaL1           1    \
                                            CaH1         10         KCd1         120    \
                                            AR1         2.5         KAHPd1         0.4

// apdend5cRLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cRLL  apdend5bRLL -12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0.4

// apdend5aRL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aRL  apdend4bR -4.4 0 49.8 1.6  Ca_d1 -83.210e12        NaF1         125    \
                                       NaP1          0.08      KDR1          62.5  \
                                       KA1          20         K21            1    \
                                       KM1          75         CaL1           1    \
                                       CaH1         10         KCd1         120    \
                                       AR1         2.5         KAHPd1         0.4

// apdend5bRL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bRL  apdend5aRL -4.4 0 49.8 1.6  Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5cRL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cRL  apdend5bRL -4.4 0 49.8 1.6  Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend4aL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend4aL  apdend3 -25 0 43.3 4.00  Ca_d1 -33.28e12         NaF1         125    \
                                    NaP1          0.08      KDR1          62.5  \
                                    KA1          20         K21            1    \
                                    KM1          75         CaL1           1    \
                                    CaH1         10         KCd1         120    \
                                    AR1         2.5         KAHPd1         0.4

// apdend4bL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend4bL  apdend4aL -25 0 43.3 4.00 Ca_d1 -33.28e12         NaF1         125    \
                                     NaP1          0.08      KDR1          62.5  \
                                     KA1          20         K21            1    \
                                     KM1          75         CaL1           1    \
                                     CaH1         10         KCd1         120    \
                                     AR1         2.5         KAHPd1         0.4

// apdend5aLLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aLLL  apdend4bL -12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5bLLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bLLL  apdend5aLLL -12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0.4

// apdend5cLLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cLLL  apdend5bLLL -12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0.4

// apdend5aLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aLL  apdend4bL -4.4 0 49.8 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5bLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bLL  apdend5aLL -4.4 0 49.8 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

// apdend5cLL Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cLL  apdend5bLL -4.4 0 49.8 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

// apdend5aLRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aLRR  apdend4bL -12.9 0 48.3 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0 .4

// apdend5bLRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bLRR  apdend5aLRR -12.9 0 48.3 1.6   Ca_d1 -83.210e12        NaF1         125    \
                                            NaP1          0.08      KDR1          62.5  \
                                            KA1          20         K21            1    \
                                            KM1          75         CaL1           1    \
                                            CaH1         10         KCd1         120    \
                                            AR1         2.5         KAHPd1         0.4

// apdend5cLRR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cLRR  apdend5bLRR -12.9 0 48.3 1.6 Ca_d1 -83.210e12        NaF1         125    \
                                          NaP1          0.08      KDR1          62.5  \
                                          KA1          20         K21            1    \
                                          KM1          75         CaL1           1    \
                                          CaH1         10         KCd1         120    \
                                          AR1         2.5         KAHPd1         0.4

// apdend5aLR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5aLR  apdend4bL 4.4 0 49.8 1.6    Ca_d1 -83.210e12        NaF1         125    \
                                        NaP1          0.08      KDR1          62.5  \
                                        KA1          20         K21            1    \
                                        KM1          75         CaL1           1    \
                                        CaH1         10         KCd1         120    \
                                        AR1         2.5         KAHPd1         0.4

// apdend5bLR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5bLR  apdend5aLR 4.4 0 49.8 1.6    Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

// apdend5cLR Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5cLR  apdend5bLR 4.4 0 49.8 1.6    Ca_d1 -83.210e12        NaF1         125    \
                                         NaP1          0.08      KDR1          62.5  \
                                         KA1          20         K21            1    \
                                         KM1          75         CaL1           1    \
                                         CaH1         10         KCd1         120    \
                                         AR1         2.5         KAHPd1         0.4

//APICAL OBLIQUE DENDRITE COMPARTMENTS ***************************************
// apobdistRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRa  apdend1  50  0  0  1.0       Ca_d1 -133.14e12        NaF1        937.5  \
                                         NaP1          0.6       KDR1        937.5  \
                                         KA1          20         K21           1    \
                                         KM1          75         CaL1          1    \
                                         CaH1         10         KCd1        120    \
                                         AR1         2.5         KAHPd1        0.4

// apobdistRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRb  apobdistRa  50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                        NaP1          0.08      KDR1           62.5  \
                                        KA1          20         K21             1    \
                                        KM1          75         CaL1            1    \
                                        CaH1         10         KCd1          120    \
                                        AR1         2.5         KAHPd1          0.4

// apobdistRc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRc  apobdistRb  50  0  0  1.0   Ca_d1 -133.14e12    NaF1              125    \
                                        NaP1          0.08  KDR1               62.5  \
                                        KA1          20     K21                 1    \
                                        KM1          75     CaL1                1    \
                                        CaH1         10     KCd1              120    \
                                        AR1         2.5     KAHPd1              0.4

// apobproxRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRa  apdend1  50  0  0  1.0       Ca_d1 -133.14e12        NaF1        937.5  \
                                         NaP1          0.6       KDR1        937.5  \
                                         KA1          20         K21           1    \
                                         KM1          75         CaL1          1    \
                                         CaH1         10         KCd1        120    \
                                         AR1         2.5         KAHPd1        0.4

// apobproxRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRb  apobproxRa  50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                        NaP1          0.08      KDR1           62.5  \
                                        KA1          20         K21             1    \
                                        KM1          75         CaL1            1    \
                                        CaH1         10         KCd1          120    \
                                        AR1         2.5         KAHPd1          0.4

// apobproxRc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRc  apobproxRb  50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                        NaP1          0.08      KDR1           62.5  \
                                        KA1          20         K21             1    \
                                        KM1          75         CaL1            1    \
                                        CaH1         10         KCd1          120    \
                                        AR1         2.5         KAHPd1          0.4

// apobdistLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLa  apdend1  -50  0  0  1.0      Ca_d1 -133.14e12        NaF1        937.5  \
                                         NaP1          0.6       KDR1        937.5  \
                                         KA1          20         K21           1    \
                                         KM1          75         CaL1          1    \
                                         CaH1         10         KCd1        120    \
                                         AR1         2.5         KAHPd1        0.4

// apobdistLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLb  apobdistLa  -50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                         NaP1          0.08      KDR1           62.5  \
                                         KA1          20         K21             1    \
                                         KM1          75         CaL1            1    \
                                         CaH1         10         KCd1          120    \
                                         AR1         2.5         KAHPd1          0.4

// apobdistLc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLc  apobdistLb  -50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                         NaP1          0.08      KDR1           62.5  \
                                         KA1          20         K21             1    \
                                         KM1          75         CaL1            1    \
                                         CaH1         10         KCd1          120    \
                                         AR1         2.5         KAHPd1          0.4

// apobproxLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLa  apdend1  -50  0  0  1.0      Ca_d1 -133.14e12        NaF1        937.5  \
                                         NaP1          0.6       KDR1        937.5  \
                                         KA1          20         K21           1    \
                                         KM1          75         CaL1          1    \
                                         CaH1         10         KCd1        120    \
                                         AR1         2.5         KAHPd1        0.4

// apobproxLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLb  apobproxLa  -50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                         NaP1          0.08      KDR1           62.5  \
                                         KA1          20         K21             1    \
                                         KM1          75         CaL1            1    \
                                         CaH1         10         KCd1          120    \
                                         AR1         2.5         KAHPd1          0.4

// apobproxLc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLc  apobproxLb  -50  0  0  1.0   Ca_d1 -133.14e12        NaF1          125    \
                                         NaP1          0.08      KDR1           62.5  \
                                         KA1          20         K21             1    \
                                         KM1          75         CaL1            1    \
                                         CaH1         10         KCd1          120    \
                                         AR1         2.5         KAHPd1          0.4

//BASAL DENDRITE COMPARTMENTS ************************************************
// basalLdeepa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLdeepa  soma  -18.7  0  -46.4  1.0     Ca_d1 -133.14e12        NaF1    937.5  \
                                            NaP1          0.6       KDR1    937.5  \
                                            KA1          20         K21       1    \
                                            KM1          75         CaL1      1    \
                                            CaH1         10         KCd1    120    \
                                            AR1         2.5         KAHPd1    0.4

// basalLdeepb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLdeepb  basalLdeepa -18.7  0 -46.4  1.0 Ca_d1 -133.14e12        NaF1      125    \
                                             NaP1          0.08      KDR1       62.5  \
                                             KA1          20         K21         1    \
                                             KM1          75         CaL1        1    \
                                             CaH1         10         KCd1      120    \
                                             AR1         2.5         KAHPd1      0.4

// basalLdeepc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLdeepc  basalLdeepb -18.7  0 -46.4 1.0  Ca_d1 -133.14e12        NaF1      125    \
                                             NaP1          0.08      KDR1       62.5  \
                                             KA1          20         K21         1    \
                                             KM1          75         CaL1        1    \
                                             CaH1         10         KCd1      120    \
                                             AR1         2.5         KAHPd1      0.4

// basalLmiddeepa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmiddeepa  soma  -36.6  0  -34.1  1.0     Ca_d1 -133.14e12        NaF1    937.5  \
                                               NaP1          0.6       KDR1    937.5  \
                                               KA1          20         K21       1    \
                                               KM1          75         CaL1      1    \
                                               CaH1         10         KCd1    120    \
                                               AR1         2.5         KAHPd1    0.4

// basalLmiddeepb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmiddeepb  basalLmiddeepa -36.6  0 -34.1  1.0 Ca_d1 -133.14e12        NaF1      125    \
                                                   NaP1          0.08      KDR1       62.5  \
                                                   KA1          20         K21         1    \
                                                   KM1          75         CaL1        1    \
                                                   CaH1         10         KCd1      120    \
                                                   AR1           2.5       KAHPd1      0.4

// basalLmiddeepc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmiddeepc  basalLmiddeepb -36.6  0 -34.1 1.0 Ca_d1 -133.14e12        NaF1      125    \
                                                  NaP1          0.08      KDR1       62.5  \
                                                  KA1          20         K21         1    \
                                                  KM1          75         CaL1        1    \
                                                  CaH1         10         KCd1      120    \
                                                  AR1         2.5         KAHPd1      0.4

// basalLmidsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmidsupera  soma  -46.4  0  -18.7  1.0     Ca_d1 -133.14e12      NaF1  937.5  \
                                                NaP1        0.6       KDR1  937.5  \
                                                KA1        20         K21     1    \
                                                KM1        75         CaL1    1    \
                                                CaH1       10         KCd1  120    \
                                                AR1         2.5       KAHPd1  0.4

// basalLmidsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmidsuperb  basalLmidsupera -46.4  0 -18.7  1.0  Ca_d1 -133.14e12      NaF1    125    \
                                                      NaP1        0.08      KDR1     62.5  \
                                                      KA1        20         K21       1    \
                                                      KM1        75         CaL1      1    \
                                                      CaH1       10         KCd1    120    \
                                                      AR1         2.5       KAHPd1    0.4

// basalLmidsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmidsuperc  basalLmidsuperb -46.4  0 -18.7 1.0  Ca_d1 -133.14e12      NaF1    125    \
                                                     NaP1        0.08      KDR1     62.5  \
                                                     KA1        20         K21       1    \
                                                     KM1        75         CaL1      1    \
                                                     CaH1       10         KCd1    120    \
                                                     AR1         2.5       KAHPd1    0.4

// basalLsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsupera  soma  -49.2  0  -8.7  1.0           Ca_d1 -133.14e12        NaF1    937.5  \
                                                  NaP1          0.6       KDR1    937.5  \
                                                  KA1          20         K21       1    \
                                                  KM1          75         CaL1      1    \
                                                  CaH1         10         KCd1    120    \
                                                  AR1         2.5         KAHPd1    0.4

// basalLsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsuperb  basalLsupera -49.2  0 -8.7  1.0       Ca_d1 -133.14e12        NaF1      125    \
                                                    NaP1          0.08      KDR1       62.5  \
                                                    KA1          20         K21         1    \
                                                    KM1          75         CaL1        1    \
                                                    CaH1         10         KCd1      120    \
                                                    AR1         2.5         KAHPd1      0.4

// basalLsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsuperc  basalLsuperb -49.2  0 -8.7 1.0         Ca_d1 -133.14e12        NaF1      125    \
                                                     NaP1          0.08      KDR1       62.5  \
                                                     KA1          20         K21         1    \
                                                     KM1          75         CaL1        1    \
                                                     CaH1         10         KCd1      120    \
                                                     AR1         2.5         KAHPd1      0.4

// basalRdeepa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRdeepa  soma   18.7  0   -46.4  1.0     Ca_d1 -133.14e12        NaF1    937.5  \
                                             NaP1          0.6       KDR1    937.5  \
                                             KA1          20         K21       1    \
                                             KM1          75         CaL1      1    \
                                             CaH1         10         KCd1    120    \
                                             AR1         2.5         KAHPd1    0.4

// basalRdeepb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRdeepb  basalRdeepa  18.7  0  -46.4  1.0 Ca_d1 -133.14e12        NaF1      125    \
                                              NaP1          0.08      KDR1       62.5  \
                                              KA1          20         K21         1    \
                                              KM1          75         CaL1        1    \
                                              CaH1         10         KCd1      120    \
                                              AR1         2.5         KAHPd1      0.4

// basalRdeepc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRdeepc  basalRdeepb  18.7  0  -46.4 1.0  Ca_d1 -133.14e12        NaF1      125    \
                                              NaP1          0.08      KDR1       62.5  \
                                              KA1          20         K21         1    \
                                              KM1          75         CaL1        1    \
                                              CaH1         10         KCd1      120    \
                                              AR1         2.5         KAHPd1      0.4


// basalRmiddeepa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmiddeepa  soma   36.6  0  -34.1  1.0     Ca_d1 -133.14e12        NaF1      937.5  \
                                               NaP1          0.6       KDR1      937.5  \
                                               KA1          20         K21         1    \
                                               KM1          75         CaL1        1    \
                                               CaH1         10         KCd1      120    \
                                               AR1         2.5         KAHPd1      0.4

// basalRmiddeepb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmiddeepb  basalRmiddeepa  36.6  0 -34.1  1.0 Ca_d1 -133.14e12        NaF1      125    \
                                                   NaP1          0.08      KDR1       62.5  \
                                                   KA1          20         K21         1    \
                                                   KM1          75         CaL1        1    \
                                                   CaH1         10         KCd1      120    \
                                                   AR1         2.5         KAHPd1      0.4

// basalRmiddeepc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmiddeepc  basalRmiddeepb  36.6  0 -34.1 1.0 Ca_d1 -133.14e12        NaF1      125    \
                                                  NaP1          0.08      KDR1       62.5  \
                                                  KA1          20         K21         1    \
                                                  KM1          75         CaL1        1    \
                                                  CaH1         10         KCd1      120    \
                                                  AR1         2.5         KAHPd1      0.4

// basalRmidsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmidsupera  soma   46.4  0  -18.7  1.0     Ca_d1 -133.14e12        NaF1      937.5  \
                                                NaP1          0.6       KDR1      937.5  \
                                                KA1          20         K21         1    \
                                                KM1          75         CaL1        1    \
                                                CaH1         10         KCd1      120    \
                                                AR1         2.5         KAHPd1      0.4

// basalRmidsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmidsuperb  basalRmidsupera  46.4  0 -18.7  1.0 Ca_d1 -133.14e12        NaF1      125    \
                                                     NaP1          0.08      KDR1       62.5  \
                                                     KA1          20         K21         1    \
                                                     KM1          75         CaL1        1    \
                                                     CaH1         10         KCd1      120    \
                                                     AR1         2.5         KAHPd1      0.4

// basalRmidsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmidsuperc  basalRmidsuperb  46.4  0 -18.7 1.0  Ca_d1 -133.14e12        NaF1      125    \
                                                     NaP1          0.08      KDR1       62.5  \
                                                     KA1          20         K21         1    \
                                                     KM1          75         CaL1        1    \
                                                     CaH1         10         KCd1      120    \
                                                     AR1         2.5         KAHPd1      0.4

// basalRsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsupera  soma  49.2  0 -8.7 1.0   Ca_d1 -133.14e12      NaF1     937.5    \
                                       NaP1      0.6         KDR1     937.5    \
                                       KA1      20           K21        1      \
                                       KM1      75           CaL1       1      \
                                       CaH1     10           KCd1     120      \
                                       AR1       2.5         KAHPd1     0.4

// basalRsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsuperb  basalRsupera  49.2  0 -8.7  1.0    Ca_d1 -133.14e12      NaF1    125    \
                                                 NaP1        0.08      KDR1     62.5  \
                                                 KA1        20         K21       1    \
                                                 KM1        75         CaL1      1    \
                                                 CaH1       10         KCd1    120    \
                                                 AR1         2.5       KAHPd1    0.4

// basalRsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsuperc  basalRsuperb  49.2  0 -8.7 1.0         Ca_d1 -133.14e12      NaF1    125    \
                                                     NaP1        0.08      KDR1     62.5  \
                                                     KA1        20         K21       1    \
                                                     KM1        75         CaL1      1    \
                                                     CaH1       10         KCd1    120    \
                                                     AR1         2.5       KAHPd1    0.4

//		Specifying constants for axonal compartment RMCM=0.0024 (0.0009)
*set_compt_param	RM	0.10   //(0.1)
*set_compt_param	RA	1.00   //(1.00)
*set_compt_param	CM	0.009  //(0.009)(0.024)
//*set_compt_param     EREST_ACT	-0.07
//*set_compt_param     ELEAK	        -0.07

//AXONAL COMPARTMENTS ***************************************
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona  soma  0  0 -25  1.8      NaF1       4000   \
                                NaP1          0.0       KDR1       4000   \
                                KA1          20         K21           1   \
                                KM1           0         CaL1          0   \
                                CaH1          0   \
                                AR1           0  

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb  axona  0  0 -50  1.4     NaF1       4000   \
                                NaP1          0.0       KDR1       4000   \
                                KA1          20         K21           1   \
                                KM1           0         CaL1          0   \
                                CaH1          0   \
                                AR1           0  


// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa  axonb  -8.7  0 -49.2  1.2     NaF1       4000   \
                                      NaP1          0.0       KDR1       4000   \
                                      KA1          20         K21           1   \
                                      KM1           0         CaL1          0   \
                                      CaH1          0   \
                                      AR1           0  

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb  axonLa  -8.7  0 -49.2  1.0     NaF1       4000   \
                                       NaP1          0.0       KDR1       4000   \
                                       KA1          20         K21           1   \
                                       KM1           0         CaL1          0   \
                                       CaH1          0   \
                                       AR1           0 

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa  axonb   8.7  0 -49.2  1.2    NaF1       4000   \
                                     NaP1          0.0       KDR1       4000   \
                                     KA1          20         K21           1   \
                                     KM1           0         CaL1          0   \
                                     CaH1          0   \
                                     AR1           0 

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb  axonRa   8.7  0 -49.2  1.0   NaF1       4000   \
                                     NaP1          0.0       KDR1       4000   \
                                     KA1          20         K21           1   \
                                     KM1           0         CaL1          0   \
                                     CaH1          0   \
                                     AR1           0    
