# Generate-and-plot-periodical-signals-using-Matlab

Requirements for exercise 1:

1. Consider a sine wave with a frequency of 50Hz, find out the period Tsemnal of this signal
2. Find out the sampling frequency Fs, depending on the Nyquist-Shannon theorem
3. Find out the sampling period Tesant
4. Set the time base. More info here: https://www.mathworks.com/help/signal/ug/create-uniform-and-nonuniform-time-vectors.html
5. Generate a sine wave
6. Show the first 2 periods of this signal
7. Choose the sampling frequency so that the plotted sine wave to be correct
8. Show the first 5 periods of this signal
9. Generate the same signal with a freq of 100 Hz. What happens if you keep the same sampling freq ?
10. Generate a sawtooth wave with f = 100Hz and plot 7 periods of it
11. Generate a square wave with f = 5 Hz and show 10 periods of it

Requirements for exercise 2:

1. Generate a sine wave with f = 2kHz and plot 5 periods of it
2. Sample the above sine wave with f1 = 10kHz and show its samples in the same plot as the one above
3. Sample the above sine wave with f2 = 3kHz and show its samples in the same plot as the one above
4. What is the difference between 2 and 3 results?
5. Do the same using the following sampling frequencies: f1 = 20kHz and f2 = 1.5kHz
6. Follow the steps 1-4 for a sawtooth wave
7. Follow the steps 1-4 for a square wave

Requirements for exercise 3:

1. Generate and plot a sine wave with a frequency of 50Hz and show its first 5 periods
2. Generate and plot in the same figure as 1, a noise signal using the function "rand"
3. Generate and plot in the same figure as 1 and 2, the resulting signal after adding the 2 above mentioned signals
4. in the same plot, show the samples of the signal affected by noise
5. sample the signal obtained at 3 in a new figure with a sample frequency chosen accordingly to be possible to rebuild it and show the samples obtained in the same figure with the signal plotted in the above mentioned signal
(hint: you can use the downsample matlab function)
