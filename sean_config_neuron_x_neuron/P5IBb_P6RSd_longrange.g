// assigning weights
float P5IBbmaxweight = 1.0
float P5IBbminweight = 0.0
float P5IBbdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P5IBbmaxweight}-{P5IBbminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P5IBbdecayrate} } + {P5IBbminweight}}
echo P5IBb_P6RSd longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P5IBbnet/P5IBb[]/soma/spk7longrange -fixed {longrangeweight}

