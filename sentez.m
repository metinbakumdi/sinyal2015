Fs=2192; %8192
gecikme=round(Fs/10);
notalar=[];
duraklama=[]; %Fs/1000; %duraklama suresi
oktdegis=0; %oktdegis degiskeni oktav'a eklenmek istenen degeri  ekleyecek[-3,+3].
dosya=fopen('notalar.txt','r'); %text dosyasi acilacak,'r':okuma yapacak.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s'); %bosluk ile ayrýlmýs degiskenler okunacak.
fclose(dosya); %okunan dosyayý kapat.
frekans=zeros(1,length(nota));
if oktdegis~=0 %oktdegis degiskeninde degisiklik yapýlmasý durumunda islenecek sart. 
    for j=1:length(oktav) %text'ten okunan oktav degerlerini dongu icerisinde degistir.
        oktav(j)=oktav(j)+oktdegis; 
    end
end
for i=1:length(nota)
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonunu cagýrarak frekans degerlerini hesapla. 
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonuyla sin sinyalleri cizildi.
    notalar=[notalar sindalga duraklama];
end  
for i=1:length(notalar)
    if (i+gecikme)<length(notalar)
        notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i); 
    end
end
notalar = notalar/max(abs(notalar));
plot(notalar)
sound(notalar,Fs);
