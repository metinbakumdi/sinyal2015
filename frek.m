%%Fonksiyon tanýmla
function ff=frek(nota,oktav)  % fonksiyon olusturduk. nota ve oktava göre argüman yaptik.

%%Nota deðerlerini tanýmla
 notalar={'do','dod', 're', 'mib' ,'mi' ,'fa', 'fad', 'sol', 'sold', 'la', 'sib', 'si','sus'}; %notalari diziye koyduk.
 referans=16.35;  %do notasinin 0.oktavdaki deðerini referans olarak aldýk. 
 p=length(notalar); %p deðiþkenine notalarin uzunluðunu atandý.
 
 %%Oktav deðerleri girilmezse;
 if nargin<2 %argümanlarýn sayýsý 2 den küçükse 
      oktav=4; %oktavý 4 e eþitle 
 end 
 %%Frekans hesapla
 for i=0:8 %oktavlari bir deger belirleyip her seferinde  arttýrdik.
     if i==oktav %i deðeri giriþ yaptýðýmiz oktav'a  eþitse 
        for j=1:p %notalar icin for döngüsü oluþturduk. 
            if  size(nota)==size(notalar{j}) %argüman olan nota boyutu eþit ise notalar dizisindeki j.elemana 
               if nota==notalar{j}%argüman olan nota, notalar dizisindeki j. elemana eþitse 
				if j==p%argüman olan nota notalar dizisindeki 13. elemana eþitse

                   ff=0;%frekansý 0 a eþitledik.
		else
			ff=2^i*(2^((j-1)/12)*referans);%frekansý hesaplar

				end 
                   end 
               end  
            end 
        end 
      end 
 end 

