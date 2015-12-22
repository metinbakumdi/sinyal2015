function [xx,tt]=note(frekans,vurus)  
2 Fs=8192; 
3 tt=0:1/Fs:((0.25-(1/Fs))/2);  
4 zz=0; 
5    xx=sin(2*pi*frekans*tt);  
6 if length(xx)==length(zz)     
7        zz=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))]; 
8 end 
9 end 




%[x,y]=note(90,1/8) 
% plot(y,x) 
 
% zz1=[linspace(0,1.5,8192*(1/8)*(2/8)),linspace(1.5,1,8192*(1/8)*(1/8)),linspace(1,1,8192*(1/8)*(4/8)),linspace(1,0,8192*(1/8)*(1/8))] 
  %  plot(y,zz1)    
%zz2=[linspace(0,-1.5,8192*(1/8)*(2/8)),linspace(-1.5,-1,8192*(1/8)*(1/8)),linspace(-1,-1,8192*(1/8)*(4/8)),linspace(-1,0,8192*(1/8)*(1/8))] 
 %plot(y,zz2) 
 %zz3=zz1.*zz2 
 %carp=x.*zz3 
 %plot(y,carp) 
