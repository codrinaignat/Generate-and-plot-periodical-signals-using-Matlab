% Laborator Interferențe și Perturbații
% 28 Februarie 2022

% Ex. 1
%Generarea unui semnal sinusoidal cu o frecv f=50Hz
clc;
clear;

%setarea frecvenței
frecv = 100;

%calculul perioadei [s]
Tsemnal = 1/frecv;

%stabilirea frecv de eșantionare
Fs = 20*frecv;

%calculul perioadei [s]
Tesant = 1/Fs;

%număr perioade
nrPerioade = 10;

%Setarea bazei de timp
t = 0:Tesant:Tsemnal*nrPerioade;

%definirea semnalului sin
y = sin(2*pi*frecv*t);
z = sawtooth(2*pi*frecv*t);
w = square(2*pi*frecv*t);

%afișarea semnalului sin generat
lungime_plot = nrPerioade*(Fs/frecv);
figure(1)
plot(t(1:lungime_plot),y(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal sinus - frecvență 50Hz și amplitudine maximă 1')

figure(2)
plot(t(1:lungime_plot),z(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal dinte de fierastrau - frecvență 50Hz și amplitudine maximă 1')


figure(3)
plot(t(1:lungime_plot),w(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal dreptunghiular- frecvență 50Hz și amplitudine maximă 1')