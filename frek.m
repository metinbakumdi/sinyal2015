1 function ff=frek(nota,oktav)  % fonksiyon olusturduk. nota ve oktava g�re arg�man yaptik. 
2 notalar={'Do','Dod', 'Re', 'Mib' ,'Mi' ,'Fa', 'Fad', 'Sol', 'Sold', 'La', 'Sib', 'Si','Sus'}; %notalari diziye koyduk.
3 referans=16.35;  %do notasinin 0.oktavdaki de�erini referans olarak ald�k. 
4 p=length(notalar); %p de�i�kenine notalarin uzunlu�unu atand�. 
5 if nargin<2 %arg�manlar�n say�s� 2 den k���kse 
6      oktav=4; %oktav� 4 e e�itle 
7 end 
8 for i=0:8 %oktavlari bir deger belirleyip her seferinde  artt�rdik.
9     if i==oktav %i de�eri giri� yapt���miz oktav'a  e�itse 
10        for j=1:p %notalar icin for d�ng�s� olu�turduk. 
11            if  size(nota)==size(notalar{j}) %arg�man olan nota boyutu e�it ise notalar dizisindeki j.elemana 
12               if nota==notalar{j}%arg�man olan nota, notalar dizisindeki j. elemana e�itse 
13                   ff=2^i*(2^((j-1)/12)*referans);%frekans� hesaplama
14                   if size(nota)==size(notalar{13})% nota boyutu e�it ise notalar dizisindeki 13.elemana 
15                   if nota==notalar{13}% nota notalar dizisindeki 13. elemana e�itse 
16                       ff=0; %frekans� 0 a e�itledik. 
17                   end 
18                   end 
19               end  
20            end 
21        end 
22      end 
23 end 
24 end 
