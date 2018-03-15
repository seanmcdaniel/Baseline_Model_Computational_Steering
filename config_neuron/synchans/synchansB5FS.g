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
float EGABA = -0.075
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50 
// Actual conductance set by channel field in .p file
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================


function make_Ex_ch10P23RSAMPA

// AMPA synapse for P23RS - B5FS

	if ({exists Ex_ch10P23RSAMPA})
		return
	end

	create		synchan	Ex_ch10P23RSAMPA
    	setfield	        Ex_ch10P23RSAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10P23RSNMDA

// NMDA synapse for P23RS - B5FS

    if ({exists Ex_ch10P23RSNMDA})
        return
    end

    create  synchan  Ex_ch10P23RSNMDA

        setfield     Ex_ch10P23RSNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10P23RSNMDA/block
        setfield         Ex_ch10P23RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10P23RSNMDA Ex_ch10P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10P23RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10P23RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Ex_ch10P5IBAMPA

// AMPA synapse for P5IB - B5FS

	if ({exists Ex_ch10P5IBAMPA})
		return
	end

	create		synchan	Ex_ch10P5IBAMPA
    	setfield	        Ex_ch10P5IBAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10P5IBNMDA

// NMDA synapse for P5IB - B5FS

    if ({exists Ex_ch10P5IBNMDA})
        return
    end

    create  synchan  Ex_ch10P5IBNMDA

        setfield     Ex_ch10P5IBNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10P5IBNMDA/block
        setfield         Ex_ch10P5IBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10P5IBNMDA Ex_ch10P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10P5IBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10P5IBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Inh_ch10B5FSGABAa

//GABA_A synape for B5FS - B5FS

	if ({exists Inh_ch10B5FSGABAa})
		return
	end

	create		synchan	Inh_ch10B5FSGABAa
    	setfield	        Inh_ch10B5FSGABAa \
	Ek			{ EGABA } \
	tau1		{ 3.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch10P6RSAMPA

// AMPA synapse for P6RS - B5FS

	if ({exists Ex_ch10P6RSAMPA})
		return
	end

	create		synchan	Ex_ch10P6RSAMPA
    	setfield	        Ex_ch10P6RSAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10P6RSNMDA

// NMDA synapse for P6RS - B5FS

    if ({exists Ex_ch10P6RSNMDA})
        return
    end

    create  synchan  Ex_ch10P6RSNMDA

        setfield     Ex_ch10P6RSNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10P6RSNMDA/block
        setfield         Ex_ch10P6RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10P6RSNMDA Ex_ch10P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10P6RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10P6RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Ex_ch10ST4RSAMPA

// AMPA synapse for ST4RS - B5FS

	if ({exists Ex_ch10ST4RSAMPA})
		return
	end

	create		synchan	Ex_ch10ST4RSAMPA
    	setfield	        Ex_ch10ST4RSAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10ST4RSNMDA

// NMDA synapse for ST4RS - B5FS

    if ({exists Ex_ch10ST4RSNMDA})
        return
    end

    create  synchan  Ex_ch10ST4RSNMDA

        setfield     Ex_ch10ST4RSNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10ST4RSNMDA/block
        setfield         Ex_ch10ST4RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10ST4RSNMDA Ex_ch10ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10ST4RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10ST4RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Inh_ch10I23LTSGABAa

//GABA_A synapse for I23LTS - B5FS

	if ({exists Inh_ch10I23LTSGABAa})
		return
	end

	create		synchan	Inh_ch10I23LTSGABAa
    	setfield	        Inh_ch10I23LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch10I5LTSGABAa

//GABA_A synapse for I5LTS - B5FS

	if ({exists Inh_ch10I5LTSGABAa})
		return
	end

	create		synchan	Inh_ch10I5LTSGABAa
    	setfield	        Inh_ch10I5LTSGABAa \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch10TCRAMPA

// AMPA synapse for TCR - B5FS

	if ({exists Ex_ch10TCRAMPA})
		return
	end

	create		synchan	Ex_ch10TCRAMPA
    	setfield	        Ex_ch10TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10TCRNMDA

// NMDA synapse for TCR - B5FS

    if ({exists Ex_ch10TCRNMDA})
        return
    end

    create  synchan  Ex_ch10TCRNMDA

        setfield     Ex_ch10TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 100.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10TCRNMDA/block
        setfield         Ex_ch10TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10TCRNMDA Ex_ch10TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch10TCRNMDA VOLTAGE Vm

end

function make_Ex_ch10P23FRBAMPA

// AMPA synapse for P23FRB - B5FS

	if ({exists Ex_ch10P23FRBAMPA})
		return
	end

	create		synchan	Ex_ch10P23FRBAMPA
    	setfield	        Ex_ch10P23FRBAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10P23FRBNMDA

// NMDA synapse for P23FRB - B5FS

    if ({exists Ex_ch10P23FRBNMDA})
        return
    end

    create  synchan  Ex_ch10P23FRBNMDA

        setfield     Ex_ch10P23FRBNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10P23FRBNMDA/block
        setfield         Ex_ch10P23FRBNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10P23FRBNMDA Ex_ch10P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10P23FRBNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10P23FRBNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Ex_ch10P5RSAMPA

// AMPA synapse for P5RS - B5FS

	if ({exists Ex_ch10P5RSAMPA})
		return
	end

	create		synchan	Ex_ch10P5RSAMPA
    	setfield	        Ex_ch10P5RSAMPA \
		Ek			{EGlu} \
		tau1		{ 0.8e-3 } \	// sec
		tau2		{ 0.8e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch10P5RSNMDA

// NMDA synapse for P5RS - B5FS

    if ({exists Ex_ch10P5RSNMDA})
        return
    end

    create  synchan  Ex_ch10P5RSNMDA

        setfield     Ex_ch10P5RSNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch10P5RSNMDA/block
        setfield         Ex_ch10P5RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch10P5RSNMDA Ex_ch10P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch10P5RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch10P5RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end
