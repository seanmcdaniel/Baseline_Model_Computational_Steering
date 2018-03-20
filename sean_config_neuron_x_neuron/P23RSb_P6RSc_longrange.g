// assigning weights
float P23RSbmaxweight = 1.0
float P23RSbminweight = 0.0
float P23RSbdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23RSbmaxweight}-{P23RSbminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23RSbdecayrate} } + {P23RSbminweight}}
echo P23RSb_P6RSc longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P23RSbnet/P23RSb[]/soma/spk2longrange -fixed {longrangeweight}

