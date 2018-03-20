// assigning weights
float P23FRBamaxweight = 1.0
float P23FRBaminweight = 0.0
float P23FRBadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23FRBamaxweight}-{P23FRBaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23FRBadecayrate} } + {P23FRBaminweight}}
echo P23FRBa_P23RSc longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P23FRBanet/P23FRBa[]/soma/spk22longrange -fixed {longrangeweight}

