// genesis

// LFP Calculation from cellular network,taken at specified point.
// Specifically for P5IBb synaptic currents

echo P5IBb Synaptic Currents - LFP Setup !!!!!!!!!!!!!!!!!!!!!
echo

str s

int k, kmax

kmax = P5IBb_NX*P5IBb_NY-1

//Load synapse location array, P23RS - P5IBb AMPA

str locationsP23RS = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP23RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P23RSAMPA LFPsynmodcent CURRENT Ik 0.0

     end

end


//Load synapse location array, P23RS - P5IBb NMDA

str s

//Load synapse location array

str locationsP23RS = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP23RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P23RSNMDA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, P5IB - P5IBb AMPA

str s

//Load synapse location array

str locationsP5IB = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP5IB}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P5IBAMPA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, P5IB - P5IBb NMDA

str s

//Load synapse location array

str locationsP5IB = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP5IB}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P5IBNMDA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, B5FS - P5IBb GABAa

str s

//Load synapse location array

str locationsB5FS = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsB5FS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Inh_ch7B5FSGABAa LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, P6RS - P5IBb AMPA

str s

//Load synapse location array

str locationsP6RS = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP6RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P6RSAMPA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, P6RS - P5IBb NMDA

str s

//Load synapse location array

str locationsP6RS = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsP6RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7P6RSNMDA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, C23FS - P5IBb GABAa

str s

//Load synapse location array

str locationsC23FS = "axona "

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsC23FS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Inh_ch7C23FSGABAa LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, C5FS - P5IBb GABAa

str s

//Load synapse location array

str locationsC5FS = "axona "

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsC5FS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Inh_ch7C5FSGABAa LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, ST4RS - P5IBb AMPA

str s

//Load synapse location array

str locationsST4RS = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsST4RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7ST4RSAMPA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, ST4RS - P5IBb NMDA

str s

//Load synapse location array

str locationsST4RS = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsST4RS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7ST4RSNMDA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, I23LTS - P5IBb GABAa

str s

//Load synapse location array

str locationsI23LTS = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsI23LTS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Inh_ch7I23LTSGABAa LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, I5LTS - P5IBb GABAa

str s

//Load synapse location array

str locationsI5LTS = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsI5LTS}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Inh_ch7I5LTSGABAa LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, TCR - P5IBb AMPA

str s

//Load synapse location array

str locationsTCR = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsTCR}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7TCRAMPA LFPsynmodcent CURRENT Ik 0.0

     end

end

//Load synapse location array, TCR - P5IBb NMDA

str s

//Load synapse location array

str locationsTCR = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

for (k=0;k<={kmax};k=k+1)

     foreach s ({arglist {locationsTCR}})

          addmsg /P5IBbnet/P5IBb[{k}]/{s}/Ex_ch7TCRNMDA LFPsynmodcent CURRENT Ik 0.0

     end

end
