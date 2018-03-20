// assigning weights
float P6RSbmaxweight = 1.0
float P6RSbminweight = 0.0
float P6RSbdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RSbmaxweight}-{P6RSbminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RSbdecayrate} } + {P6RSbminweight}}
echo P6RSb_I23LTS longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P6RSbnet/P6RSb[]/soma/spk12longrange -fixed {longrangeweight}

