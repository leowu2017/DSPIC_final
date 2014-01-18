close all;clear all;clc;
X=zeros(16,8);

X(:,1)=rand(16,1)+rand(16,1)*i;
% X(:,1)=[0:15]';
% X(:,1)=ones(16,1);
% X(:,1)=[1;zeros(15,1)];
W=exp(-j*2*pi/16);

% 2
for i=1:1:8
    X(i,2)=X(i,1)+X(i+8,1);    
end
for i=9:1:16
    X(i,2)=X(i-8,1)-X(i,1);    
end
% 3
for i=1:1:12
    X(i,3)=X(i,2);    
end
for i=13:1:16
    X(i,3)=X(i,2)*-j;    
end
% 4
for i=1:4
    X(i,4)=X(i,3)+X(i+4,3);    
end
for i=9:12
    X(i,4)=X(i,3)+X(i+4,3);    
end
for i=5:8
    X(i,4)=X(i-4,3)-X(i,3);    
end
for i=13:16
    X(i,4)=X(i-4,3)-X(i,3);    
end
% 5
for i=1:6
    X(i,5)=X(i,4); 
end
X([9,10,13,14],5)=X([9,10,13,14],4); 
for i=7:8
    X(i,5)=X(i,4)*-j; 
end
for i=11:12
    X(i,5)=X(i,4)*W^2; 
end
for i=15:16
    X(i,5)=X(i,4)*W^6; 
end
% 6
for i=1:2
    X(i,6)=X(i,5)+X(i+2,5);  
end
for i=5:6
    X(i,6)=X(i,5)+X(i+2,5);  
end
for i=9:10
    X(i,6)=X(i,5)+X(i+2,5);  
end
for i=13:14
    X(i,6)=X(i,5)+X(i+2,5);  
end

for i=3:4
    X(i,6)=X(i-2,5)-X(i,5);  
end
for i=7:8
    X(i,6)=X(i-2,5)-X(i,5);  
end
for i=11:12
    X(i,6)=X(i-2,5)-X(i,5); 
end
for i=15:16
    X(i,6)=X(i-2,5)-X(i,5);  
end
% 7
for i=[1:3,5:2:15]
    X(i,7)=X(i,6); 
end
X(4,7)=X(4,6)*-j;
X(6,7)=X(6,6)*W^2;
X(8,7)=X(8,6)*W^6;
X(10,7)=X(10,6)*W;
X(12,7)=X(12,6)*W^5;
X(14,7)=X(14,6)*W^3;
X(16,7)=X(16,6)*W^7


% 8
for i=1:2:15
    X(i,8)=X(i,7)+X(i+1,7); 
end

for i=2:2:16
    X(i,8)=X(i-1,7)-X(i,7); 
end



original=fft(X(:,1));
S_R_fft=X([0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15]+1,8);
