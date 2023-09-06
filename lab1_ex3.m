% Laborator Interferente si Perturbatii
% 8 Martie 2021

% Ex3

%Generarea unui semnal sinusoidal cu o frecv f=50Hz
clc;
clear;

%setarea frecventei
frecv = 50;

%calculul perioadei [s]
Tsemnal = 1/frecv;

%stabilirea frecv de esantionare
Fs = 100*frecv;

%calculul perioadei [s]
Tesant = 1/Fs;

%numar perioade
nrPerioade = 5;

%Setarea bazei de timp
t = 0:Tesant:Tsemnal*nrPerioade;

%definirea semnalului sin
y = sin(2*pi*frecv*t);

%afisarea semnalului sin generat
lungime_plot = nrPerioade*(Fs/frecv);
figure
subplot(4,1,1)
plot(t(1:lungime_plot),y(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal sinus - frecventa 50Hz si amplitudine maxima 1')

%Generare semnal zgomot alb
ampl = 0.5; %amplitudinea zgomotului
n = ampl*rand(size(t));
%n = ampl*rand(size(t))-.25;
subplot(4,1,2)
plot(t(1:lungime_plot),n(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal zgomot alb cu amplitudine de 0.5')

%afisarea semnalului initial afectat de zgmomot alb
xn = y + n;
subplot(4,1,3)
plot(t(1:lungime_plot),xn(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal sinus cu f=50Hz afectat de zgomot alb')

%Afișarea tuturor eșantioanelor semnalului afectat de zgomot
subplot(4,1,4)
stem(t(1:lungime_plot),xn(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Eșantioanele semnalului afectat de zgomot (frecv de eșantionare initială, Fs)')











