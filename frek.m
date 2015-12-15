function ff=frek(nota,oktav) %frek fonksiyonunu tanýmladým. 


notalar=['A' 'a' 'B' 'b' 'C' 'D' 'd' 'E' 'e' 'F' 'f' 'G'] %notalarý tanýmladým. 
referans=16.35; %Do notasýnýn 0. oktavdaki deðeri referans olarak belirlendi.
p=length(notalar); %p deðiþkeni notalar matrisinin uzunluðuna eþit
 
for okt=0:8  %oktav 0dan 8e kadar
if okt==oktav %girdiðimiz oktav 0 ile 8 arasýndaysa
for j=1:p %j deðeri 1den matrisin boyutuna kadar
if nota==char(notalar(j)) %girilen nota notalar matrisindeki bir elemana eþitse 
 	 ff==2^okt*(2^((j-1)/12)*referans; %frekansý hesapla
 	end %if notanýn bitiþi 
 	end %for j'nin bitiþi 
 	end %if okt'un bitiþi 
 	end %for okt'un bitiþi
 	end %function'ýn bitiþi 
 
 
 %Frek fonksiyonunun çaðýrmak için
  f=frek('D',5) 
