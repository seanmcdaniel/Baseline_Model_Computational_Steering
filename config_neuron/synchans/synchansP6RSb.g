//genesis

/* FILE INFORMATION
** "Generic" excitatory (glutamate) and inhibitory (GABA) synaptically
**  activated channels  (based on mitsyn.g by Upi Bhalla)
**
** The channels have an alpha_function type conductance change for
** each synaptic event.
**
** Modified by D. Beeman for GENESIS 2.0 syntax and synchan object - 5/19/94
*/

// CONSTANTS
float EGlu = 0.0
float EGABA = -0.081
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================


function make_Ex_ch12P23RSAMPA

// AMPA synapse for P23RS - P6RS

	if ({exists Ex_ch12P23RSAMPA})
		return
	end

	create		synchan	Ex_ch12P23RSAMPA
    	setfield	        Ex_ch12P23RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12P23RSNMDA

// NMDA synapse for P23RS - P6RS

    if ({exists Ex_ch12P23RSNMDA})
        return
    end

    create  synchan  Ex_ch12P23RSNMDA

        setfield     Ex_ch12P23RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12P23RSNMDA/block
        setfield         Ex_ch12P23RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12P23RSNMDA Ex_ch12P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12P23RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12P23RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12P23RSNMDA VOLTAGE Vm

end

function make_Ex_ch12P5IBAMPA

// AMPA synapse for P5IB - P6RS

	if ({exists Ex_ch12P5IBAMPA})
		return
	end

	create		synchan	Ex_ch12P5IBAMPA
    	setfield	        Ex_ch12P5IBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12P5IBNMDA

// NMDA synapse for P5IB - P6RS

    if ({exists Ex_ch12P5IBNMDA})
        return
    end

    create  synchan  Ex_ch12P5IBNMDA

        setfield     Ex_ch12P5IBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12P5IBNMDA/block
        setfield         Ex_ch12P5IBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12P5IBNMDA Ex_ch12P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12P5IBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12P5IBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12P5IBNMDA VOLTAGE Vm

end

function make_Inh_ch12B5FSGABAa

//GABA_A synapse for B5FS - P6RS

	if ({exists Inh_ch12B5FSGABAa})
		return
	end

	create		synchan	Inh_ch12B5FSGABAa
    	setfield	        Inh_ch12B5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch12P6RSAMPA

// AMPA synapse for P6RS - P6RS

	if ({exists Ex_ch12P6RSAMPA})
		return
	end

	create		synchan	Ex_ch12P6RSAMPA
    	setfield	        Ex_ch12P6RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12P6RSNMDA

// NMDA synapse for P6RS - P6RS

    if ({exists Ex_ch12P6RSNMDA})
        return
    end

    create  synchan  Ex_ch12P6RSNMDA

        setfield     Ex_ch12P6RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12P6RSNMDA/block
        setfield         Ex_ch12P6RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12P6RSNMDA Ex_ch12P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12P6RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12P6RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12P6RSNMDA VOLTAGE Vm

end

function make_Inh_ch12C23FSGABAa

//GABA_A synapse for C23FS - P6RS

	if ({exists Inh_ch12C23FSGABAa})
		return
	end

	create		synchan	Inh_ch12C23FSGABAa
    	setfield	        Inh_ch12C23FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch12C5FSGABAa

//GABA_A synapse for C5FS - P6RS

	if ({exists Inh_ch12C5FSGABAa})
		return
	end

	create		synchan	Inh_ch12C5FSGABAa
    	setfield	        Inh_ch12C5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch12ST4RSAMPA

// AMPA synapse for ST4RS - P6RS

	if ({exists Ex_ch12ST4RSAMPA})
		return
	end

	create		synchan	Ex_ch12ST4RSAMPA
    	setfield	        Ex_ch12ST4RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12ST4RSNMDA

// NMDA synapse for ST4RS - P6RS

    if ({exists Ex_ch12ST4RSNMDA})
        return
    end

    create  synchan  Ex_ch12ST4RSNMDA

        setfield     Ex_ch12ST4RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12ST4RSNMDA/block
        setfield         Ex_ch12ST4RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12ST4RSNMDA Ex_ch12ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12ST4RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12ST4RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12ST4RSNMDA VOLTAGE Vm

end

function make_Inh_ch12I23LTSGABAa

//GABA_A synapse for I23LTS - P6RS

	if ({exists Inh_ch12I23LTSGABAa})
		return
	end

	create		synchan	Inh_ch12I23LTSGABAa
    	setfield	        Inh_ch12I23LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch12I5LTSGABAa

//GABA_A synapse for I5LTS - P6RS

	if ({exists Inh_ch12I5LTSGABAa})
		return
	end

	create		synchan	Inh_ch12I5LTSGABAa
    	setfield	        Inh_ch12I5LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch12TCRAMPA

// AMPA synapse for TCR - P6RS

	if ({exists Ex_ch12TCRAMPA})
		return
	end

	create		synchan	Ex_ch12TCRAMPA
    	setfield	        Ex_ch12TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12TCRNMDA

// NMDA synapse for TCR - P6RS

    if ({exists Ex_ch12TCRNMDA})
        return
    end

    create  synchan  Ex_ch12TCRNMDA

        setfield     Ex_ch12TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12TCRNMDA/block
        setfield         Ex_ch12TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12TCRNMDA Ex_ch12TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12TCRNMDA VOLTAGE Vm

end

function make_Ex_ch12TCRAMPA

// AMPA synapse for TCR - P6RS

	if ({exists Ex_ch12TCRAMPA})
		return
	end

	create		synchan	Ex_ch12TCRAMPA
    	setfield	        Ex_ch12TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12TCRNMDA

// NMDA synapse for TCR - P6RS

    if ({exists Ex_ch12TCRNMDA})
        return
    end

    create  synchan  Ex_ch12TCRNMDA

        setfield     Ex_ch12TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12TCRNMDA/block
        setfield         Ex_ch12TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12TCRNMDA Ex_ch12TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12TCRNMDA VOLTAGE Vm

end

function make_Ex_ch12P23FRBAMPA

// AMPA synapse for P23FRB - P6RS

	if ({exists Ex_ch12P23FRBAMPA})
		return
	end

	create		synchan	Ex_ch12P23FRBAMPA
    	setfield	        Ex_ch12P23FRBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12P23FRBNMDA

// NMDA synapse for P23FRB - P6RS

    if ({exists Ex_ch12P23FRBNMDA})
        return
    end

    create  synchan  Ex_ch12P23FRBNMDA

        setfield     Ex_ch12P23FRBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12P23FRBNMDA/block
        setfield         Ex_ch12P23FRBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12P23FRBNMDA Ex_ch12P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12P23FRBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12P23FRBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12P23FRBNMDA VOLTAGE Vm

end

function make_Ex_ch12P5RSAMPA

// AMPA synapse for P5RS - P6RS

	if ({exists Ex_ch12P5RSAMPA})
		return
	end

	create		synchan	Ex_ch12P5RSAMPA
    	setfield	        Ex_ch12P5RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch12P5RSNMDA

// NMDA synapse for P5RS - P6RS

    if ({exists Ex_ch12P5RSNMDA})
        return
    end

    create  synchan  Ex_ch12P5RSNMDA

        setfield     Ex_ch12P5RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch12P5RSNMDA/block
        setfield         Ex_ch12P5RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch12P5RSNMDA Ex_ch12P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch12P5RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch12P5RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch12P5RSNMDA VOLTAGE Vm

end
