[signal,fs] = audioread("Valse.wav");   # load music

signal = signal(:,1); # change to vector

step=ceil(20*fs/1000);    # one spectral slice every 20 ms
window=ceil(100*fs/1000); # 100 ms data window

specgram(signal, 2^nextpow2(window), fs, window, window-step);

Fnyq = fs/2;  
Fc=1000; # cut off freq


#[b,a]=butter(2, Fc/Fnyq , 'high');    # high filter
[b,a]=butter(2, Fc/Fnyq );   # low filter

t=0:1/fs:5;

output=filter(b,a,signal);  # filtering

audiowrite ('newValse.wav',output , fs) # write the new audio 
