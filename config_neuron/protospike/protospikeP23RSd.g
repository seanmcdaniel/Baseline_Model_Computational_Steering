// genesis

/* FILE INFORMATION
**
**  Function to create prototype "spikegen" element "spike"
**  with unit amplitude and 0.010 second refractory period
**
**  GENESIS 2.0
*/

function make_spk4
        if ({exists spk4})
                return
        end

        create spikegen spk4
        setfield spk4 \
                thresh  0.00 \         // V
                abs_refract     10e-4 \ // sec
                output_amp      1
end
