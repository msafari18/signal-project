
clear all 
f = 200;
fs = 10000 ;
t = [ 0 : 0.1 : 5 ];
x = sin(2 * pi * f/fs * t) ;

xfft = fft(x);
t3 = (0:length(xfft)-1*50/length(xfft));
figure(1);
plot(t3,abs(xfft))

fp = 2000;
p = sin(2 * pi * fp/fs * t) ;

a = x .* p ;
figure(2);
plot (t,a ) ;

afft = fft(a);
t1 = (0:length(afft)-1*50/length(afft));
figure(3);
plot(t1,abs(afft))

b = a .* p ;
figure(4);
plot (t,b ) ;

bfft = fft(b);
t2 = (0:length(bfft)-1*50/length(bfft));
figure(5);
plot(t2,abs(bfft))
