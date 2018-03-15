// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk3longrange
        if ({exists spk3longrange})
                return
        end

        create spikegen spk3longrange
        setfield spk3longrange \
                thresh  0.00 \         // V
                abs_refract     10e-4 \ // sec
                output_amp      1
end
