// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk20longrange
        if ({exists spk20longrange})
                return
        end

        create spikegen spk20longrange
        setfield spk20longrange \
                thresh  0.00 \         // V
                abs_refract     10e-4 \ // sec
                output_amp      1
end
