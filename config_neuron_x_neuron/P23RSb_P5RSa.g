// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {P23RSb_P5RSa_destlim}

/*
 * Usage :
 * planarconnect source-path destination-path
 *		 [-relative]
 *		 [-sourcemask {box,ellipse} x1 y1 x2 y2]
 *		 [-sourcehole {box,ellipse} x1 y1 x2 y2]
 *		 [-destmask   {box,ellipse} x1 y1 x2 y2]
 *		 [-desthole   {box,ellipse} x1 y1 x2 y2]
 *		 [-probability p]
 */

echo Making connections from the P23RSb cells to the P5RSa cells.


//P23RSb - P5RSa AMPA

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2  \
	      /P5RSanet/P5RSa[]/{s}/Ex_ch23P23RSAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23RSb_P5RSa_prob}}

end

//P23RSb - P5RSa NMDA

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2  \
	      /P5RSanet/P5RSa[]/{s}/Ex_ch23P23RSNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23RSb_P5RSa_prob}}

end

echo Setting weights and delays for P23RSb->P5RSa connections.

// assigning delays using the planardelay function

/* 
 * Usage :
 * planardelay path 
 * [-fixed delay]
 * [-radial propagation_velocity] 
 * [-uniform range]   (not used here)
 * [-gaussian sd max] (not used here)
 * [-exp mid max]     (not used here)
 * [-absoluterandom]  (not used here)
 */

barrierall //ayu
rvolumedelay /P23RSbnet/P23RSb[]/soma/spk2 -radial  {P23RSb_P5RSa_axdelayCV} -add

//P23RSb - P5RSa AMPA

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P5RSanet/P5RSa[]/{s}/Ex_ch23P23RSAMPA {P23RSb_P5RSa_syndelay} -add

end

//P23RSb - P5RSa NMDA

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P5RSanet/P5RSa[]/{s}/Ex_ch23P23RSNMDA {P23RSb_P5RSa_syndelay} -add

end

// assigning weights using the planarweight function

/* 
 * Usage :
 *  planarweight sourcepath 
 *          [-fixed weight]
 *          [-decay decay_rate max_weight min_weight]
 *          [-uniform range] 
 *          [-gaussian sd max] 
 *          [-exponential mid max]
 *          [-absoluterandom]
 */

barrierall //ayu
rvolumeweight /P23RSbnet/P23RSb[]/soma/spk2 -decay {P23RSdecayrate} {P23RSmaxwgt} {P23RSminwgt}




