function [x,t] = note(f,dur) % note fonksiyonu oluþturdum. 
 
 

t=0:1/(f*100):dur; %t aralýðýný tanýmladým. 
x=sin(2*pi*f*t) %x deðiþkenini bir sinüs sinyaline eþitledim 
	end %note fonksiyonunun bitiþi 

%note fonksiyonunu çaðýrmak için
 
[x,y]=note(6,10) 
plot(y,x) 
