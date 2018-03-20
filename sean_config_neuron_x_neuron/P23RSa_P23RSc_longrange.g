// assigning weights
float P23RSamaxweight = 1.0
float P23RSaminweight = 0.0
float P23RSadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23RSamaxweight}-{P23RSaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23RSadecayrate} } + {P23RSaminweight}}
echo P23RSa_P23RSc longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P23RSanet/P23RSa[]/soma/spk1longrange -fixed {longrangeweight}

