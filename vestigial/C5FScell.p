// cell.p - Cell parameter file used in TraubFS_B

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
   *set_compt_param	RM	2.50  //0.33333 (2.50)
   *set_compt_param	RA	2.00  //0.3 (2.00)
   *set_compt_param	CM	0.01  //0.01 (0.01)
   *set_compt_param     EREST_ACT	-0.0700   //
   *set_compt_param     ELEAK           -0.0735   // -0.07538


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
//*set_compt_param     ELEAK	-0.0594
// Actually, after Cunningham et al. PNAS 2004;101:7152-7157, will maintain
// leakage potential at ELEAK   -0.07
soma  none  0   0  20 15.0    Ca_s16      -44.38e12     NaF16           600   \
                              KDR16      1000                                 \
                              KA16         10                                 \
                              CaH16         1           KCs16           250  

//*set_compt_param        ELEAK   -0.075
*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)

//PROXIMAL DENDRITE COMPARTMENTS ***************************************

// proxdendN   Cunningham et al., PNAS  2004;101:7152-7157
proxdendN  soma  0  0  40 2.12  Ca_d16 -156.99e12         NaF16    600   \
                                KDR16      1000   \
                                KA16         10   \
                                CaH16         1           KCd16    250   
                              
// proxdendE   Cunningham et al., PNAS  2004;101:7152-7157
proxdendE  soma  40  0  0 2.12  Ca_d16 -156.99e12         NaF16    600   \
                                KDR16      1000   \
                                KA16         10   \
                                CaH16         1           KCd16    250   

// proxdendS   Cunningham et al., PNAS  2004;101:7152-7157
proxdendS  soma  0  0  -40 2.12 Ca_d16 -156.99e12         NaF16    600   \
                                KDR16      1000   \
                                KA16         10   \
                                CaH16         1           KCd16    250   

// proxdendW   Cunningham et al., PNAS  2004;101:7152-7157
proxdendW  soma  -40 0  0 2.12  Ca_d16 -156.99e12         NaF16    600   \
                                KDR16      1000   \
                                KA16         10   \
                                CaH16         1           KCd16    250   

*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)
//*set_compt_param     ELEAK	-0.075


//North DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendNlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonga  proxdendN  -13.68  0  37.6 1.34  Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendNlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongb  distdendNlonga  -13.68 0 37.6 1.34    Ca_d16 -248.37e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendNlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongc  distdendNlongb  -13.68 0 37.6 1.34    Ca_d16 -248.37e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250  

// distdendNlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongd  distdendNlongc  -13.68 0 37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendNlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonge  distdendNlongd  -13.68 0 37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendNlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongf  distdendNlonge  -13.68 0 37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendNlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongg  distdendNlongf  -13.68 0 37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendNmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmida  proxdendN  13.68  0  37.6  1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendNmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidb  distdendNmida  13.68 0  37.6  0.84     Ca_d16 -396.21e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendNmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidc  distdendNmidb  13.68 0 37.6  0.84      Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendNshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshorta  distdendNlonga   13.68  0  37.6  0.84  Ca_d16 -396.21e12        NaF16    600   \
                                                        KDR16      1000   \
                                                        KA16         10   \
                                                        CaH16         1          KCd16    250   

// distdendNshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshortb  distdendNshorta 13.68 0 37.6  0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

//East DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendElonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonga  proxdendE  37.6  0.0 13.68 1.34  Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendElongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongb  distdendElonga  37.6 0.0 13.68 1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendElongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongc  distdendElongb  37.6 0.0 13.68 1.34   Ca_d16 -248.37e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendElongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongd  distdendElongc  37.6 0.0 13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendElonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonge  distdendElongd  37.6 0.0 13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendElongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongf  distdendElonge  37.6 0.0 13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendElongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongg  distdendElongf  37.6 0.0 13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   


// distdendEmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmida  proxdendE  37.6 0.0 -13.68 1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendEmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidb  distdendEmida 37.6 0.0 -13.68  0.84    Ca_d16 -396.21e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendEmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidc  distdendEmidb  37.6 0.0 -13.68  0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendEshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshorta  distdendElonga   37.6  0.0  -13.68 0.84 Ca_d16 -396.21e12        NaF16    600   \
                                                         KDR16      1000   \
                                                         KA16         10   \
                                                         CaH16         1          KCd16    250   

// distdendEshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshortb  distdendEshorta 37.6 0.0 -13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                        KDR16       100   \
                                                        KA16         10   \
                                                        CaH16         2          KCd16    250   

//South DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendSlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonga  proxdendS  13.68  0  -37.6 1.34  Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendSlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongb  distdendSlonga  13.68 0 -37.6 1.34    Ca_d16 -248.37e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendSlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongc  distdendSlongb  13.68 0 -37.6 1.34    Ca_d16 -248.37e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendSlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongd  distdendSlongc  13.68 0 -37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendSlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonge  distdendSlongd  13.68 0 -37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendSlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongf  distdendSlonge  13.68 0 -37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendSlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongg  distdendSlongf  13.68 0 -37.6 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   


// distdendSmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmida  proxdendS  -13.68  0 -37.6 1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendSmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidb  distdendSmida  -13.68 0  -37.6 0.84    Ca_d16 -396.21e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendSmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidc  distdendSmidb  -13.68 0 -37.6  0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendSshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshorta  distdendSlonga   -13.68  0  -37.6 0.84  Ca_d16 -396.21e12        NaF16    600   \
                                                         KDR16      1000   \
                                                         KA16         10   \
                                                         CaH16         1          KCd16    250   

// distdendSshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshortb  distdendSshorta -13.68 0 -37.6 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

//West DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendWlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonga  proxdendW -37.6 0.0 13.68 1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendWlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongb  distdendWlonga -37.6 0.0 13.68 1.34    Ca_d16 -248.37e12        NaF16    600   \
                                                       KDR16      1000   \
                                                       KA16         10   \
                                                       CaH16         1          KCd16    250   

// distdendWlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongc  distdendWlongb -37.6 0.0 13.68 1.34    Ca_d16 -248.37e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

// distdendWlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongd  distdendWlongc -37.6 0.0 13.68 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

// distdendWlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonge  distdendWlongd -37.6 0.0 13.68 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

// distdendWlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongf  distdendWlonge -37.6 0.0 13.68 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

// distdendWlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongg  distdendWlongf -37.6 0.0 13.68 0.84    Ca_d16 -396.21e12        NaF16    100   \
                                                       KDR16       100   \
                                                       KA16         10   \
                                                       CaH16         2          KCd16    250   

// distdendWmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmida  proxdendW  -37.6 0.0 13.68 1.34   Ca_d16 -248.37e12        NaF16    600   \
                                                 KDR16      1000   \
                                                 KA16         10   \
                                                 CaH16         1          KCd16    250   

// distdendWmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidb  distdendWmida -37.6 0.0 13.68  0.84    Ca_d16 -396.21e12        NaF16    600   \
                                                      KDR16      1000   \
                                                      KA16         10   \
                                                      CaH16         1          KCd16    250   

// distdendWmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidc  distdendWmidb  -37.6 0.0 13.68  0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                      KDR16       100   \
                                                      KA16         10   \
                                                      CaH16         2          KCd16    250   

// distdendWshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshorta  distdendWlonga   -37.6  0.0 13.68 0.84 Ca_d16 -396.21e12        NaF16    600   \
                                                        KDR16      1000   \
                                                        KA16         10   \
                                                        CaH16         1          KCd16    250   

// distdendWshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshortb  distdendWshorta -37.6 0.0 13.68 0.84   Ca_d16 -396.21e12        NaF16    100   \
                                                        KDR16       100   \
                                                        KA16         10   \
                                                        CaH16         2          KCd16    250   

//		Specifying constants for axonal compartment

   *set_compt_param	RM	0.1   // (0.1)
   *set_compt_param	RA	1.0   // (1.0)
   *set_compt_param	CM	0.01  // (0.01) RC = 0.001
//*set_compt_param     ELEAK	-0.07441
  
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona  soma  0  0 -25  1.8      NaF16      4000   \
                                KDR16      4000   \
                                KA16         10   

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb  axona  0  0 -50  1.4     NaF16      4000   \
                                KDR16      4000   \
                                KA16         10   

// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa  axonb  -8.7  0 -49.2  1.2    NaF16      4000   \
                                     KDR16      4000   \
                                     KA16         10

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb  axonLa  -8.7  0 -49.2  1.0   NaF16      4000   \
                                     KDR16      4000   \
                                     KA16         10    

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa  axonb   8.7  0 -49.2  1.2    NaF16      4000   \
                                     KDR16      4000   \
                                     KA16         10

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb  axonRa   8.7  0 -49.2  1.0   NaF16      4000   \
                                     KDR16      4000   \
                                     KA16         10  