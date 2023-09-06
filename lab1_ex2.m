% Laborator Interferențe și Perturbații
% 28 Februarie 2022

% Ex 2
%Generarea unui semnal sinusoidal cu o frecv f=2kHz
clc;
clear;

%setarea frecvenței
frecv = 2000;

%calculul perioadei [s]
Tsemnal = 1/frecv;

%stabilirea frecv de eșantionare
Fs = 100*frecv;

%calculul perioadei [s]
Tesant = 1/Fs;

%număr perioade
nrPerioade = 5;

%Setarea bazei de timp
t = 0:Tesant:Tsemnal*nrPerioade;

%definirea semnalului sin
y = sin(2*pi*frecv*t);

%afișarea semnalului sin generat
lungime_plot = nrPerioade*(Fs/frecv);
figure
subplot(3,1,1)
plot(t(1:lungime_plot),y(1:lungime_plot))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Semnal sinus - frecvența 2kHz și amplitudine maximă 1')

%Eșantionarea și afișarea eșantioanelor după eșant cu f1=10kHz
f1 = 10000; %frecv de eșantionare 10kHz
lungime_plot1 = nrPerioade*(f1/frecv);
t1 = 0:1/f1:Tsemnal*nrPerioade;
x1 = sin(2*pi*frecv*t1);
subplot(3,1,2)
stem(t1(1:lungime_plot1),x1(1:lungime_plot1))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Eșantioanele obținute utilizând o frecv de eșant de 10kHz')

%Eșantionarea și afișarea eșantioanelor după eșant cu f2=3kHz
f2 = 3000; %frecv de eșantionare 3kHz
lungime_plot2 = nrPerioade*(f2/frecv);
t2 = 0:1/f2:Tsemnal*nrPerioade;
x2 = sin(2*pi*frecv*t2);
subplot(3,1,3)
stem(t2(1:lungime_plot2),x2(1:lungime_plot2))
xlabel('Timp(ms)')
ylabel('Amplitudine')
title('Eșantioanele obținute utilizând o frecv de eșant de 3kHz')
