function ff=frek(nota,oktav) %frek fonksiyonunu tan�mlad�m. 


notalar=['A' 'a' 'B' 'b' 'C' 'D' 'd' 'E' 'e' 'F' 'f' 'G'] %notalar� tan�mlad�m. 
referans=16.35; %Do notas�n�n 0. oktavdaki de�eri referans olarak belirlendi.
p=length(notalar); %p de�i�keni notalar matrisinin uzunlu�una e�it
 
for okt=0:8  %oktav 0dan 8e kadar
if okt==oktav %girdi�imiz oktav 0 ile 8 aras�ndaysa
for j=1:p %j de�eri 1den matrisin boyutuna kadar
if nota==char(notalar(j)) %girilen nota notalar matrisindeki bir elemana e�itse 
 	 ff==2^okt*(2^((j-1)/12)*referans; %frekans� hesapla
 	end %if notan�n biti�i 
 	end %for j'nin biti�i 
 	end %if okt'un biti�i 
 	end %for okt'un biti�i
 	end %function'�n biti�i 
 
 
 %Frek fonksiyonunun �a��rmak i�in
  f=frek('D',5) 
