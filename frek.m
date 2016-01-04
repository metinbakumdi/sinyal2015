%%Fonksiyon tan�mla
function ff=frek(nota,oktav)  % fonksiyon olusturduk. nota ve oktava g�re arg�man yaptik.

%%Nota de�erlerini tan�mla
 notalar={'do','dod', 're', 'mib' ,'mi' ,'fa', 'fad', 'sol', 'sold', 'la', 'sib', 'si','sus'}; %notalari diziye koyduk.
 referans=16.35;  %do notasinin 0.oktavdaki de�erini referans olarak ald�k. 
 p=length(notalar); %p de�i�kenine notalarin uzunlu�unu atand�.
 
 %%Oktav de�erleri girilmezse;
 if nargin<2 %arg�manlar�n say�s� 2 den k���kse 
      oktav=4; %oktav� 4 e e�itle 
 end 
 %%Frekans hesapla
 for i=0:8 %oktavlari bir deger belirleyip her seferinde  artt�rdik.
     if i==oktav %i de�eri giri� yapt���miz oktav'a  e�itse 
        for j=1:p %notalar icin for d�ng�s� olu�turduk. 
            if  size(nota)==size(notalar{j}) %arg�man olan nota boyutu e�it ise notalar dizisindeki j.elemana 
               if nota==notalar{j}%arg�man olan nota, notalar dizisindeki j. elemana e�itse 
				if j==p%arg�man olan nota notalar dizisindeki 13. elemana e�itse

                   ff=0;%frekans� 0 a e�itledik.
		else
			ff=2^i*(2^((j-1)/12)*referans);%frekans� hesaplar

				end 
                   end 
               end  
            end 
        end 
      end 
 end 

