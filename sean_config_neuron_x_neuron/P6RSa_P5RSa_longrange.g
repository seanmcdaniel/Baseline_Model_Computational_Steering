// assigning weights
float P6RSamaxweight = 1.0
float P6RSaminweight = 0.0
float P6RSadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RSamaxweight}-{P6RSaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RSadecayrate} } + {P6RSaminweight}}
echo P6RSa_P5RSa longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P6RSanet/P6RSa[]/soma/spk11longrange -fixed {longrangeweight}

