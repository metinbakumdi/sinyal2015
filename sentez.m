%%De�erler atand�, dosyadan de�er okundu.
Fs=3500; %�rnekleme frekans� belirlendi.
gecikme=round(Fs/100);%echonun gecikme s�resi
notalar=[];%notalar matrisine ilk de�eri atar.
duraklama=zeros(1,round(Fs/100)); %Fs/10000; %duraklama suresini belirledik.
oktdegis=3; %oktdegis degiskeni oktav'a eklenmek istenen degeri  ekleyecek[-3,+3].
dosya=fopen('notalar.txt','r'); %text dosyasi acilacak,'r':okuma yapacak.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %bosluk ile ayr�lm�s degiskenler okunacak.
fclose(dosya); %okunan dosyay� kapat.

%%Oktav de�i�imleri i�in
if oktdegis~=0 %oktdegis degiskeninde degisiklik yap�lmas� durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten okunan oktav degerlerini dongu icerisinde degistir.
        oktav(j)=oktav(j)+oktdegis; 
    end
end

%%Notalar matrisinde nota sinyalleri olu�turur
for i=1:length(nota)
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonunu cag�rarak frekans degerlerini hesapla. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonuyla sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama]; %notalar�n sinyalleri aras�na bosluk eklenerek notalar matrisinde birlestirildi.
end  

%%Notalar matrisine echo eklemek i�in
for i=1:length(notalar)
    if (i+gecikme)<length(notalar)%gecikme notalar uzunlugunu asmad�g� surece islenecek sart.
        notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i);  %Fs, 10'da biri s�resince geciktirilip(gecikme)
    end                                                       %++genli�i %30 oran�nda d���r�lerek kendisi ile topland�.
end
notalar = notalar/max(abs(notalar));
plot(notalar)%notalar matrisini �izdirir.
sound(notalar,Fs);
