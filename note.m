function [x,t] = note(f,dur) % note fonksiyonu olu�turdum. 
 
 

t=0:1/(f*100):dur; %t aral���n� tan�mlad�m. 
x=sin(2*pi*f*t) %x de�i�kenini bir sin�s sinyaline e�itledim 
	end %note fonksiyonunun biti�i 

%note fonksiyonunu �a��rmak i�in
 
[x,y]=note(6,10) 
plot(y,x) 
