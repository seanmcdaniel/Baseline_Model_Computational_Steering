// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {P23FRBa_P6RSc_destlim}

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

echo Making connections from the P23FRBa cells to the P6RSc cells.


//P23FRBa - P6RSc AMPA

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23FRBanet/P23FRBa[]/soma/spk22  \
	      /P6RScnet/P6RSc[]/{s}/Ex_ch13P23FRBAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23FRBa_P6RSc_prob}}

end

//P23FRBa - P6RSc NMDA

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23FRBanet/P23FRBa[]/soma/spk22  \
	      /P6RScnet/P6RSc[]/{s}/Ex_ch13P23FRBNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeP23probscale}*{P23FRBa_P6RSc_prob}}

end

echo Setting weights and delays for P23FRBa->P6RSc connections.

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
rvolumedelay /P23FRBanet/P23FRBa[]/soma/spk22 -radial  {P23FRBa_P6RSc_axdelayCV} -add

//P23FRBa - P6RSc AMPA

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P6RScnet/P6RSc[]/{s}/Ex_ch13P23FRBAMPA {P23FRBa_P6RSc_syndelay} -add

end

//P23FRBa - P6RSc NMDA

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P6RScnet/P6RSc[]/{s}/Ex_ch13P23FRBNMDA {P23FRBa_P6RSc_syndelay} -add

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
rvolumeweight /P23FRBanet/P23FRBa[]/soma/spk22 -decay {P23FRBdecayrate} {P23FRBmaxwgt} {P23FRBminwgt}




