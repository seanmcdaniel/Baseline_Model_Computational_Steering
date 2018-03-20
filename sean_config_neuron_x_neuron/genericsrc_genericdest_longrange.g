// assigning weights
float %SRC%decayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{%SHORTSRC%maxwgt}-{%SHORTSRC%minwgt}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*%SRC%decayrate} } + {%SHORTSRC%minwgt}}
echo %SRC%_%DEST% longrangeweight is {longrangeweight}
barrierall //ayu
rvolumeweight /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange -fixed {longrangeweight}

