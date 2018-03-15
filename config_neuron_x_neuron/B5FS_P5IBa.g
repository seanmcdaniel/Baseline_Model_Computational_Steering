// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {B5FS_P5IBa_destlim}

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

echo Making connections from the B5FS cells to the P5IBa cells.

// B5FS - P5IBa GABAa

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmida basalRsupera basalRmida basaldeepa apdend1 apdend2 "

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /B5FSnet/B5FS[]/soma/spk10  \
	      /P5IBanet/P5IBa[]/{s}/Inh_ch6B5FSGABAa@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{B5FS_P5IBa_prob}}

end

echo Setting weights and delays for B5FS->P5IBa connections.
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
rvolumedelay /B5FSnet/B5FS[]/soma/spk10 -radial  {B5FS_P5IBa_axdelayCV} -add

//B5FS - P5IBa GABAa

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmida basalRsupera basalRmida basaldeepa apdend1 apdend2 "

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P5IBanet/P5IBa[]/{s}/Inh_ch6B5FSGABAa {B5FS_P5IBa_syndelay} -add

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
rvolumeweight /B5FSnet/B5FS[]/soma/spk10 -decay {B5FSdecayrate} {B5FSmaxwgt} {B5FSminwgt}




