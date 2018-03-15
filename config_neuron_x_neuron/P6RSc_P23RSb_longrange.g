// genesis

// grep "^[P]" ../neuron_type_list.txt | while read srcneuron srcspknum; do grep "^[PIBC]" ../neuron_type_list.txt | while read destneuron destspknum; do echo SRC=$srcneuron DEST=$destneuron; locations="`grep 'str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P6RSc_P23RSb_destlim}
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

echo Making connections from the P6RSc cells to the P23RSb cells.

//P6RSc - P23RSb AMPA
str s
//Load synapse location array
str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13longrange  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P6RSAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P6RSc_P23RSb_prob}}
          //-probability 0.5

end

//P6RSc - P23RSb NMDA
str s
//Load synapse location array
str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13longrange  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P6RSNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P6RSc_P23RSb_prob}}

end

// For inhibitory long range connections
////P6RSc - P23RSb GABAa
//str s
////Load synapse location array
//str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13longrange  \
//	      /P23RSbnet/P23RSb[]/{s}/Inh_ch2P6RSGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P6RSc_P23RSb_prob}}
//
//end


echo Setting weights and delays for P6RSc->P23RSb connections.

// assigning delays
barrierall //ayu
rvolumedelay /P6RScnet/P6RSc[]/soma/spk13longrange -radial {{P6RSc_P23RSb_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P6RScmaxweight = 1.0
float P6RScminweight = 0.0
float P6RScdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RScmaxweight}-{P6RScminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RScdecayrate} } + {P6RScminweight}}
echo P6RSc_P23RSb longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P6RScnet/P6RSc[]/soma/spk13longrange -fixed {longrangeweight}

