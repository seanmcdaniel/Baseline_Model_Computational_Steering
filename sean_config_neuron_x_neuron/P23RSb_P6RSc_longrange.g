// genesis

// grep "^[P]" ../neuron_type_list.txt | while read srcneuron srcspknum; do grep "^[PIBC]" ../neuron_type_list.txt | while read destneuron destspknum; do echo SRC=$srcneuron DEST=$destneuron; locations="`grep 'str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P23RSb_P6RSc_destlim}
float destlim = 1.0 // being lazy; should calculate based on model size instead

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

echo Making connections from the P23RSb cells to the P6RSc cells.

//P23RSb - P6RSc AMPA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2longrange  \
	      /P6RScnet/P6RSc[]/{s}/Ex_ch13P23RSAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23RSb_P6RSc_prob}}
          //-probability 0.5

end

//P23RSb - P6RSc NMDA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2longrange  \
	      /P6RScnet/P6RSc[]/{s}/Ex_ch13P23RSNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23RSb_P6RSc_prob}}

end

// For inhibitory long range connections
////P23RSb - P6RSc GABAa
//str s
////Load synapse location array
//str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P23RSbnet/P23RSb[]/soma/spk2longrange  \
//	      /P6RScnet/P6RSc[]/{s}/Inh_ch13P23RSGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P23RSb_P6RSc_prob}}
//
//end


echo Setting weights and delays for P23RSb->P6RSc connections.

// assigning delays
barrierall //ayu
rvolumedelay /P23RSbnet/P23RSb[]/soma/spk2longrange -radial {{P23RSb_P6RSc_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P23RSbmaxweight = 1.0
float P23RSbminweight = 0.0
float P23RSbdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23RSbmaxweight}-{P23RSbminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23RSbdecayrate} } + {P23RSbminweight}}
echo P23RSb_P6RSc longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P23RSbnet/P23RSb[]/soma/spk2longrange -fixed {longrangeweight}

