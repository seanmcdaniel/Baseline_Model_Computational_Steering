// assigning weights
float P5IBamaxweight = 1.0
float P5IBaminweight = 0.0
float P5IBadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P5IBamaxweight}-{P5IBaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P5IBadecayrate} } + {P5IBaminweight}}
echo P5IBa_P6RSc longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /P5IBanet/P5IBa[]/soma/spk6longrange -fixed {longrangeweight}

