// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {P23RSb_P23RSb_destlim}

/*
 * Usage :
 * volumeconnect source-path destination-path
 *		 [-relative]
 *		 [-sourcemask {box,ellipse} x1 y1 x2 y2]
 *		 [-sourcehole {box,ellipse} x1 y1 x2 y2]
 *		 [-destmask   {box,ellipse} x1 y1 x2 y2]
 *		 [-desthole   {box,ellipse} x1 y1 x2 y2]
 *		 [-probability p]
 */

echo Making connections from the P23RSb cells to the P23RSb cells.

//P23RSb - P23RSb AMPA

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P23RSAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23RSb_P23RSb_prob}}

end

//P23RSb - P23RSb NMDA

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P23RSNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23RSb_P23RSb_prob}}

end

echo Setting weights and delays for P23RSb->P23RSb connections.
// assigning delays using the volumedelay function

/* 
 * Usage :
 * volumedelay path 
 * [-fixed delay]
 * [-radial propagation_velocity] 
 * [-uniform range]   (not used here)
 * [-gaussian sd max] (not used here)
 * [-exp mid max]     (not used here)
 * [-absoluterandom]  (not used here)
 */

barrierall //ayu
rvolumedelay /P23RSbnet/P23RSb[]/soma/spk2 -radial  {P23RSb_P23RSb_axdelayCV} -add

//P23RSb - P23RSb AMPA

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P23RSbnet/P23RSb[]/{s}/Ex_ch2P23RSAMPA {P23RSb_P23RSb_syndelay} -add

end

//P23RSb - P23RSb NMDA

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P23RSbnet/P23RSb[]/{s}/Ex_ch2P23RSNMDA {P23RSb_P23RSb_syndelay} -add

end

// assigning weights using the volumeweight function

/* 
 * Usage :
 *  volumeweight sourcepath 
 *          [-fixed weight]
 *          [-decay decay_rate max_weight min_weight]
 *          [-uniform range] 
 *          [-gaussian sd max] 
 *          [-exponential mid max]
 *          [-absoluterandom]
 */

barrierall //ayu
rvolumeweight /P23RSbnet/P23RSb[]/soma/spk2 -decay {P23RSdecayrate} {P23RSmaxwgt} {P23RSminwgt}




