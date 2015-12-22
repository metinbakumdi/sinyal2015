function [x,t] = note(f,vurus) %fonksiyonu tanimliyoruz.girilicek argumanlari tan�mlad�k

fs=8192;

t = 0:1/fs:(vurus-1/fs); %0 dan dur a kadar 1/(100*ff) kadar art�yor

x = sin(2*pi*f*t); %bilgileri kullanarak sin�s olusturuyoruz


%[xx,tt]=note(1,3);

%plot(tt,xx)
