// assigning weights
float P6RSdmaxweight = 1.0
float P6RSdminweight = 0.0
float P6RSddecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RSdmaxweight}-{P6RSdminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RSddecayrate} } + {P6RSdminweight}}
echo P6RSd_P5IBd longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P6RSdnet/P6RSd[]/soma/spk14longrange -fixed {longrangeweight}

