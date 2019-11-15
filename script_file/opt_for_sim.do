database -open waves -into waves.shm -default
probe -create -shm -all -task -variables -depth all -waveform

run 1000ns
