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


function make_Ex_ch7P23RSAMPA

// AMPA synapse for P23RS - P5IB

	if ({exists Ex_ch7P23RSAMPA})
		return
	end

	create		synchan	Ex_ch7P23RSAMPA
    	setfield	        Ex_ch7P23RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7P23RSNMDA

// NMDA synapse for P23RS - P5IB

    if ({exists Ex_ch7P23RSNMDA})
        return
    end

    create  synchan  Ex_ch7P23RSNMDA

        setfield     Ex_ch7P23RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7P23RSNMDA/block
        setfield         Ex_ch7P23RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7P23RSNMDA Ex_ch7P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7P23RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7P23RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7P23RSNMDA VOLTAGE Vm

end


function make_Inh_ch7B23FSGABAa

//GABA_A synapse for B23FS - P5IB

	if ({exists Inh_ch7B23FSGABAa})
		return
	end

	create		synchan	Inh_ch7B23FSGABAa
    	setfield	        Inh_ch7B23FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch7P5IBAMPA

// AMPA synapse for P5IB - P5IB

	if ({exists Ex_ch7P5IBAMPA})
		return
	end

	create		synchan	Ex_ch7P5IBAMPA
    	setfield	        Ex_ch7P5IBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7P5IBNMDA

// NMDA synapse for P5IB - P5IB

    if ({exists Ex_ch7P5IBNMDA})
        return
    end

    create  synchan  Ex_ch7P5IBNMDA

        setfield     Ex_ch7P5IBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7P5IBNMDA/block
        setfield         Ex_ch7P5IBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7P5IBNMDA Ex_ch7P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7P5IBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7P5IBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7P5IBNMDA VOLTAGE Vm

end

function make_Inh_ch7B5FSGABAa

//GABA_A synapse for B5FS - P5IB

	if ({exists Inh_ch7B5FSGABAa})
		return
	end

	create		synchan	Inh_ch7B5FSGABAa
    	setfield	        Inh_ch7B5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch7P6RSAMPA

// AMPA synapse for P6RS - P5IB

	if ({exists Ex_ch7P6RSAMPA})
		return
	end

	create		synchan	Ex_ch7P6RSAMPA
    	setfield	        Ex_ch7P6RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7P6RSNMDA

// NMDA synapse for P6RS - P5IB

    if ({exists Ex_ch7P6RSNMDA})
        return
    end

    create  synchan  Ex_ch7P6RSNMDA

        setfield     Ex_ch7P6RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7P6RSNMDA/block
        setfield         Ex_ch7P6RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7P6RSNMDA Ex_ch7P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7P6RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7P6RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7P6RSNMDA VOLTAGE Vm

end

function make_Inh_ch7C23FSGABAa

//GABA_A synapse for C23FS - P5IB

	if ({exists Inh_ch7C23FSGABAa})
		return
	end

	create		synchan	Inh_ch7C23FSGABAa
    	setfield	        Inh_ch7C23FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch7C5FSGABAa

//GABA_A synapse for C5FS - P5IB

	if ({exists Inh_ch7C5FSGABAa})
		return
	end

	create		synchan	Inh_ch7C5FSGABAa
    	setfield	        Inh_ch7C5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch7ST4RSAMPA

// AMPA synapse for ST4RS - P5IB

	if ({exists Ex_ch7ST4RSAMPA})
		return
	end

	create		synchan	Ex_ch7ST4RSAMPA
    	setfield	        Ex_ch7ST4RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7ST4RSNMDA

// NMDA synapse for ST4RS - P5IB

    if ({exists Ex_ch7ST4RSNMDA})
        return
    end

    create  synchan  Ex_ch7ST4RSNMDA

        setfield     Ex_ch7ST4RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7ST4RSNMDA/block
        setfield         Ex_ch7ST4RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7ST4RSNMDA Ex_ch7ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7ST4RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7ST4RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7ST4RSNMDA VOLTAGE Vm

end

function make_Inh_ch7I23LTSGABAa

//GABA_A synapse for I23LTS - P5IB

	if ({exists Inh_ch7I23LTSGABAa})
		return
	end

	create		synchan	Inh_ch7I23LTSGABAa
    	setfield	        Inh_ch7I23LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch7I5LTSGABAa

//GABA_A synapse for I5LTS - P5IB

	if ({exists Inh_ch7I5LTSGABAa})
		return
	end

	create		synchan	Inh_ch7I5LTSGABAa
    	setfield	        Inh_ch7I5LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch7TCRAMPA

// AMPA synapse for TCR - P5IB

	if ({exists Ex_ch7TCRAMPA})
		return
	end

	create		synchan	Ex_ch7TCRAMPA
    	setfield	        Ex_ch7TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7TCRNMDA

// NMDA synapse for TCR - P5IB

    if ({exists Ex_ch7TCRNMDA})
        return
    end

    create  synchan  Ex_ch7TCRNMDA

        setfield     Ex_ch7TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7TCRNMDA/block
        setfield         Ex_ch7TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7TCRNMDA Ex_ch7TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7TCRNMDA VOLTAGE Vm

end

function make_Ex_ch7TCRAMPA

// AMPA synapse for TCR - P5IB

	if ({exists Ex_ch7TCRAMPA})
		return
	end

	create		synchan	Ex_ch7TCRAMPA
    	setfield	        Ex_ch7TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7TCRNMDA

// NMDA synapse for TCR - P5IB

    if ({exists Ex_ch7TCRNMDA})
        return
    end

    create  synchan  Ex_ch7TCRNMDA

        setfield     Ex_ch7TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7TCRNMDA/block
        setfield         Ex_ch7TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7TCRNMDA Ex_ch7TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7TCRNMDA VOLTAGE Vm

end

function make_Ex_ch7P23FRBAMPA

// AMPA synapse for P23FRB - P5IB

	if ({exists Ex_ch7P23FRBAMPA})
		return
	end

	create		synchan	Ex_ch7P23FRBAMPA
    	setfield	        Ex_ch7P23FRBAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7P23FRBNMDA

// NMDA synapse for P23FRB - P5IB

    if ({exists Ex_ch7P23FRBNMDA})
        return
    end

    create  synchan  Ex_ch7P23FRBNMDA

        setfield     Ex_ch7P23FRBNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7P23FRBNMDA/block
        setfield         Ex_ch7P23FRBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7P23FRBNMDA Ex_ch7P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7P23FRBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7P23FRBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7P23FRBNMDA VOLTAGE Vm

end

function make_Ex_ch7P5RSAMPA

// AMPA synapse for P5RS - P5IB

	if ({exists Ex_ch7P5RSAMPA})
		return
	end

	create		synchan	Ex_ch7P5RSAMPA
    	setfield	        Ex_ch7P5RSAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch7P5RSNMDA

// NMDA synapse for P5RS - P5IB

    if ({exists Ex_ch7P5RSNMDA})
        return
    end

    create  synchan  Ex_ch7P5RSNMDA

        setfield     Ex_ch7P5RSNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch7P5RSNMDA/block
        setfield         Ex_ch7P5RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch7P5RSNMDA Ex_ch7P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch7P5RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch7P5RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch7P5RSNMDA VOLTAGE Vm

end
