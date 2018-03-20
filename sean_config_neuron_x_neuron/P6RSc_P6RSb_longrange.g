// assigning weights
float P6RScmaxweight = 1.0
float P6RScminweight = 0.0
float P6RScdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RScmaxweight}-{P6RScminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RScdecayrate} } + {P6RScminweight}}
echo P6RSc_P6RSb longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P6RScnet/P6RSc[]/soma/spk13longrange -fixed {longrangeweight}

