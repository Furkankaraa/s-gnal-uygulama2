%% soru 1-A
fs = 100000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*100*t);
subplot(2,1,1)
plot(t,x1)
axis([0 0.2 -1 1])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
%% soru 1-B
fs = 1000000;
t = 0:1/fs:1.5;
x2 = square(2*pi*20*t);
subplot(2,1,2)
plot(t,x2)
axis([0 0.2 -1 1])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%% soru 1-C
fs = 100000;
t = -1:1/fs:1;
x1 = tripuls(t,100e-3);
subplot(2,1,1)
plot(t,x1)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%% soru 1-D
x2 = rectpuls(t,50e-3);
subplot(2,1,2)
plot(t,x2)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%% soru 1-E
tc = gauspuls('cutoff',1e6,0.5,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.6);
t2 = linspace(-5,5);
y2 = sinc(t2);
subplot(2,1,1)
plot(t1*1e3,y1)
%% soru 1-F
fs = 200E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 2e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
subplot(2,1,1)
plot(t*2e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%% soru 1-E
fs = 50000;   
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,50E3,.5);
subplot(2,1,2)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%% soru 2

%% soru 3
clc
clear all
close all
fs=10000 
f=20 
t=0:1/fs:1
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
y2=cos(2*pi*f*t)
subplot(2,1,2)
plot(t,y2,'LineWidth',2)
grid on
%%
n=-72:1:72
y=sin(2*pi*n/36)
subplot(2,1,1)
stem(n,y)
y1=cos(2*pi*n/36)
subplot(2,1,2)
stem(n,y1)
%% soru-4
clc
clear all
close all
t=-10:1:10;
g_even=(g(t)+g(-t))/2
g_odd=(g(t)-g(-t))/2
plot(t,g_odd)
%% soru-5
clc
clear all
close all
n=-100:100
y=(0.9.^abs(n)).*sin(2*pi*n/4)
sum(abs(y.^2))
%% soru-6
clc
clear all
close all
fs=2000 %fs=100 hz
f=1000 %1 Hz
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs1=2000
t_samp1=0:1/10:5
y2=sin(2*pi*f*t_samp1)
subplot(2,1,2)
stem(t_samp1,y2)
%%clc
clear all
close all
fs=50000 
f=1 
t=0:1/fs:5
y1=sin(2*pi*f*t)
subplot(2,1,1)
plot(t,y1,'LineWidth',2)
fs1=2000
t_samp1=0:1/10:5
y2=sin(2*pi*f*t_samp1)
subplot(2,1,2)
stem(t_samp1,y2)
%% soru-7
n=-72:1:72
x=4+cos(2*pi*n/24)
x0 = downsample(x,2,0);
x1 = downsample(x,2,1);
subplot(2,1,1)
stem(x)
n=-72:1:72
x=4+cos(2*pi*n/24)
x0 = downsample(x,2,0);
x1 = downsample(x,2,1);
subplot(2,1,2)
stem(x)