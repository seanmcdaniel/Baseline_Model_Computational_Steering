// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {C23FS_P5IBd_destlim}

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

echo Making connections from the C23FS cells to the P5IBd cells.

// C23FS - P5IBd GABAa

barrierall //ayu
rvolumeconnect /C23FSnet/C23FS[]/soma/spk15  \
	      /P5IBdnet/P5IBd[]/axona/Inh_ch9C23FSGABAa@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{C23FS_P5IBd_prob}}

echo Setting weights and delays for C23FS->P5IBd connections.
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
rvolumedelay /C23FSnet/C23FS[]/soma/spk15 -radial  {C23FS_P5IBd_axdelayCV} -add

//C23FS - P5IBd GABAa

barrierall //ayu
syndelay    /P5IBdnet/P5IBd[]/axona/Inh_ch9C23FSGABAa {C23FS_P5IBd_syndelay} -add

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
rvolumeweight /C23FSnet/C23FS[]/soma/spk15 -decay {C23FSdecayrate} {C23FSmaxwgt} {C23FSminwgt}





