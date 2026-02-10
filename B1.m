%% ELE532 - Lab 4 - B.1

% load all the data arrays
load('Lab4_Data.mat');
N = length(xspeech);              % total number of samples = 80,000
t = [0:1:(N-1)]/Fs;

% selected lowpass filter with passband [0, 2.5] kHz
hLPF = hLPF2500;

% display magnitude spectra of hChannel
figure;
MagSpect(hChannel);
title('Magnitude Spectra of hChannel');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% display magnitude spectra of selected lowpass filter
figure;
MagSpect(hLPF);
title('Magnitude Spectra of hLPF2500');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% display magnitude spectra of unused lowpass filter
figure;
MagSpect(hLPF2000);
title('Magnitude Spectra of hLPF2000');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% display magnitude spectra of original xspeech
figure;
MagSpect(xspeech);
title('Magnitude Spectra of xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% -------------------------------------- ENCODER -------------------------------------- %

% filter xspeech using selected lowpass filter
xspeech_filt = conv(xspeech, hLPF, 'same');

% display magnitude spectra of filtered xspeech
figure;
MagSpect(xspeech_filt);
title('Magnitude Spectra of Filtered xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% central frequency of hChannel (Fo = Fc)
Fc = 6000;

% modulate the filtered xspeech using osc.m
xspeech_filt_mod = xspeech_filt .* osc(Fc, N, Fs);

% display magnitude spectra of filtered and modulated xspeech
figure;
MagSpect(xspeech_filt_mod);
title('Magnitude Spectra of Modulated and Filtered xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% transmit filtered and modulated xspeech over hChannel
xspeech_trans = conv(xspeech_filt_mod, hChannel, 'same');

% display magnitude spectra of transmitted xspeech
figure;
MagSpect(xspeech_trans);
title('Magnitude Spectra of Transmitted xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% -------------------------------------- DECODER -------------------------------------- %

% demodulate the transmitted xspeech using osc.m
xspeech_demod = xspeech_trans .* osc(Fc, N, Fs); % central frequency of hChannel (Fo = Fc)

% display magnitude spectra of demodulated xspeech
figure;
MagSpect(xspeech_demod);
title('Magnitude Spectra of Demodulated xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% filter the demodulated xspeech using selected lowpass filter
xspeech_demod_filt = conv(xspeech_demod, hLPF, 'same');

% display magnitude spectra of demodulated and filtered xspeech
figure;
MagSpect(xspeech_demod_filt);
title('Magnitude Spectra of Post-Filtered xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% normalize the demodulated and filtered xspeech to prevent clipping and
% distortion in the recovered signal
xspeech_recovered = xspeech_demod_filt / max(abs(xspeech_demod_filt));

% display magnitude spectra of recovered xspeech
figure;
MagSpect(xspeech_recovered);
title('Magnitude Spectra of Recovered xspeech');
subtitle("Lab 4 - Problem B.1 - Kelin Mathew Jacob & Dev Brahmbhatt", "FontSize",8);

% listen to the original and recovered speech signals
%sound(xspeech, Fs);
sound(xspeech_recovered, Fs);