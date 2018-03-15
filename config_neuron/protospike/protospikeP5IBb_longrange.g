// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk7longrange
        if ({exists spk7longrange})
                return
        end

        create spikegen spk7longrange
        setfield spk7longrange \
                thresh  0.00 \         // V
                abs_refract     10e-4 \ // sec
                output_amp      1
end
