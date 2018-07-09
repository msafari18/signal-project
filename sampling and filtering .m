clear all 

t = [ 0 : 0.1 : 5 ];
f1 = 2000;
#fs1 = 10000 ;
fs1 = 5000 ;
x1 = sin(2 * pi * f1/fs1 * t) ;
y1 = fft(x1);
t1 = (0:length(y1)-1*50/length(y1));

f2 = 1000;
#fs2 = 10000 ;
fs2 = 5000 ;
x2 = sin(2 * pi * f2/fs2 * t) ;
y2 = fft(x2);
t2 = (0:length(y2)-1*50/length(y2));

f3 = 4200;
#fs3 = 10000 ;
fs3 = 5000 ;
x3 = sin(2 * pi * f3/fs3 * t) ;
y3 = fft(x3);
t3 = (0:length(y3)-1*50/length(y3));

x4 = x1 + x2 + x3 ;

figure(1);
plot(t1,abs(y1))
title('first Signal')
figure(2);
plot(t2,abs(y2))
title('2nd Signal')
figure(3);
plot(t3,abs(y3))
title('3d Signal')

y4 = fft(x4);
t4 = (0:length(y4)-1*50/length(y4));
figure(4);
plot(t4,abs(y4))
title('a + b + c signal ')

Fnyq = 10000/2;  
Fc=3000; # cut off freq
[b,a]=butter(2, Fc/Fnyq );   # low filter
x5=filter(b,a,x4);
plot(t, [x4; x5])

y5 = fft(x5);
t5 = (0:length(y5)-1*50/length(y5));
figure(6);
plot(t5,abs(y5))
title('a + b + c signal after filtering ')
