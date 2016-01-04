%%Deðerler atandý, dosyadan deðer okundu.
Fs=3500; %örnekleme frekansý belirlendi.
gecikme=round(Fs/100);%echonun gecikme süresi
notalar=[];%notalar matrisine ilk deðeri atar.
duraklama=zeros(1,round(Fs/100)); %Fs/10000; %duraklama suresini belirledik.
oktdegis=3; %oktdegis degiskeni oktav'a eklenmek istenen degeri  ekleyecek[-3,+3].
dosya=fopen('notalar.txt','r'); %text dosyasi acilacak,'r':okuma yapacak.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %bosluk ile ayrýlmýs degiskenler okunacak.
fclose(dosya); %okunan dosyayý kapat.

%%Oktav deðiþimleri için
if oktdegis~=0 %oktdegis degiskeninde degisiklik yapýlmasý durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten okunan oktav degerlerini dongu icerisinde degistir.
        oktav(j)=oktav(j)+oktdegis; 
    end
end

%%Notalar matrisinde nota sinyalleri oluþturur
for i=1:length(nota)
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonunu cagýrarak frekans degerlerini hesapla. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonuyla sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama]; %notalarýn sinyalleri arasýna bosluk eklenerek notalar matrisinde birlestirildi.
end  

%%Notalar matrisine echo eklemek için
for i=1:length(notalar)
    if (i+gecikme)<length(notalar)%gecikme notalar uzunlugunu asmadýgý surece islenecek sart.
        notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i);  %Fs, 10'da biri süresince geciktirilip(gecikme)
    end                                                       %++genliði %30 oranýnda düþürülerek kendisi ile toplandý.
end
notalar = notalar/max(abs(notalar));
plot(notalar)%notalar matrisini çizdirir.
sound(notalar,Fs);
