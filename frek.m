1 function ff=frek(nota,oktav)  % fonksiyon olusturduk. nota ve oktava göre argüman yaptik. 
2 notalar={'Do','Dod', 'Re', 'Mib' ,'Mi' ,'Fa', 'Fad', 'Sol', 'Sold', 'La', 'Sib', 'Si','Sus'}; %notalari diziye koyduk.
3 referans=16.35;  %do notasinin 0.oktavdaki deðerini referans olarak aldýk. 
4 p=length(notalar); %p deðiþkenine notalarin uzunluðunu atandý. 
5 if nargin<2 %argümanlarýn sayýsý 2 den küçükse 
6      oktav=4; %oktavý 4 e eþitle 
7 end 
8 for i=0:8 %oktavlari bir deger belirleyip her seferinde  arttýrdik.
9     if i==oktav %i deðeri giriþ yaptýðýmiz oktav'a  eþitse 
10        for j=1:p %notalar icin for döngüsü oluþturduk. 
11            if  size(nota)==size(notalar{j}) %argüman olan nota boyutu eþit ise notalar dizisindeki j.elemana 
12               if nota==notalar{j}%argüman olan nota, notalar dizisindeki j. elemana eþitse 
13                   ff=2^i*(2^((j-1)/12)*referans);%frekansý hesaplama
14                   if size(nota)==size(notalar{13})% nota boyutu eþit ise notalar dizisindeki 13.elemana 
15                   if nota==notalar{13}% nota notalar dizisindeki 13. elemana eþitse 
16                       ff=0; %frekansý 0 a eþitledik. 
17                   end 
18                   end 
19               end  
20            end 
21        end 
22      end 
23 end 
24 end 
