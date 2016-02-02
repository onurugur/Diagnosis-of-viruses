
for ife=1:10
%for j=1:1
if ife==1
    a=imread('C:\Users\onur\Desktop\m13_images\dna0.png');
  %break
end
if ife==2
    a=imread('C:\Users\onur\Desktop\m13_images\dna1.png');
   % break
end
 if ife==3
     a=imread('C:\Users\onur\Desktop\m13_images\dna10.png');
    % break
 end
  if ife==4
       a=imread('C:\Users\onur\Desktop\m13_images\dna20.png');
     %  break
  end
 if ife==5
       a=imread('C:\Users\onur\Desktop\m13_images\dna30.png');
  %break
 end
   if ife==6 
       a=imread('C:\Users\onur\Desktop\m13_images\dna40.png');
   %     break
   end
        if ife==7
        a=imread('C:\Users\onur\Desktop\m13_images\dna50.png');
    %     break
        end
        if ife==8
         a=imread('C:\Users\onur\Desktop\m13_images\dna75.png');
             %   break
        end
     if ife==9
         a=imread('C:\Users\onur\Desktop\m13_images\dna100.png');
     end
     if ife==10
          a=imread('C:\Users\onur\Desktop\m13_images\dna1000.png');
     end
 
%end
x=1;
mr=0;
md1=0;
md2=0;
md1p1=0;
md2p2=0;
md2p1=0;
md1p2=0;
m=zeros(63,63);	
m1=zeros(63,63);
m2=zeros(63,63);
m3=zeros(63,63);
m4=zeros(63,63);
m5=zeros(63,63);
m6=zeros(63,63);
m7=zeros(63,63);
count=0;
count1=0;
count2=0;
count3=0;
count4=0;
count5=0;
count6=0;
count7=0;
ref=imcrop(a,[x,1,75,62]);
dna1=imcrop(a,[(x+80),1,75,62]);
dna2=imcrop(a,[(x+160),1,75,62]);
dna1p1=imcrop(a,[(x+240),1,75,62]);
dna2p2=imcrop(a,[(x+320),1,75,62]);
dna1p2=imcrop(a,[(x+400),1,75,62]);
dna2p1=imcrop(a,[(x+480),1,75,62]);
r1=ref(:,:,1);
d1=dna1(:,:,1);
d2=dna2(:,:,1);
d1p1=dna1p1(:,:,1);
d2p2=dna2p2(:,:,1);
d1p2=dna1p2(:,:,1);
d2p1=dna2p1(:,:,1);
level=graythresh(r1);
level1=graythresh(d1);
level2=graythresh(d2);
level3=graythresh(d1p1);
level4=graythresh(d2p2);
level5=graythresh(d1p2);
level6=graythresh(d2p1);
SE = strel('disk',6);
BW=im2bw(r1,level);
BW1=im2bw(d1,level1);
BW2=im2bw(d2,level2);
BW3=im2bw(d1p1,level3);
BW4=im2bw(d2p2,level4);
BW5=im2bw(d1p2,level5);
BW6=im2bw(d2p1,level6);
r1s=imerode(BW,SE);
d1s=imerode(BW1,SE);
d2s=imerode(BW2,SE);
d1p1s=imerode(BW3,SE);
d2p2s=imerode(BW4,SE);
d1p2s=imerode(BW5,SE);
d2p1s=imerode(BW6,SE);
%figure, imshow(d1s);
r12= im2double(r1s);
d12=im2double(d1s);
d22=im2double(d2s);
d1p12=im2double(d1p1s);
d2p22=im2double(d2p2s);
d1p22= im2double(d1p2s);
d2p12= im2double(d2p1s);
%  figure,imshow(r12);
%  figure,imshow(d12);
%  figure,imshow(dp12);
%  figure,imshow(d22);
%  figure,imshow(dp22);
for c = 1:62
    for r = 1:62
       if r12(r,c,1)==1
          m(r,c)=r1(r,c,1);
          count=count+1;
%fprintf('%d ',mean(d1(r,c,1));
       end
    end
end


for c = 1:60
    for r = 1:60
       if d12(r,c,1)==1
          m1(r,c)=d1(r,c,1);
          count1=count1+1;
       end
    end
end
for c = 1:60
    for r = 1:60
       if d22(r,c,1)==1
          m2(r,c) = d2(r,c,1);
          count2=count2+1;
       end
    end
end
for c = 1:60
    for r = 1:60
       if d1p12(r,c,1)==1
          m3(r,c)=d1p1(r,c,1);
          count3=count3+1;
       end
    end
end
for c = 1:60
    for r = 1:60
       if d2p22(r,c,1)==1
          m4(r,c)=d2p2(r,c,1);
           count4=count4+1;
       end
    end
end
for c = 1:60
    for r = 1:60
       if d1p22(r,c,1)==1
          m5(r,c)=d1p2(r,c,1);
           count5=count5+1;
       end
    end
end
for c = 1:60
    for r = 1:60
       if d2p12(r,c,1)==1
          m6(r,c)=d2p1(r,c,1);
           count6=count6+1;
       end
    end
end
for c=1:60
    for r=1:60
        mr(1,1)=m(r,c,1)+mr(1,1);
    end
end
for c=1:60
    for r=1:60
        md1(1,1)=m1(r,c,1)+md1(1,1);
    end
end
for c=1:60
    for r=1:60
        md2(1,1)=m2(r,c,1)+md2(1,1);
    end
end
for c=1:60
    for r=1:60
        md1p1(1,1)=m3(r,c,1)+md1p1(1,1);
    end
end
for c=1:60
    for r=1:60
        md2p2(1,1)=m4(r,c,1)+md2p2(1,1);
    end
end
for c=1:60
    for r=1:60
        md1p2(1,1)=m5(r,c,1)+md1p2(1,1);
    end
end
for c=1:60
    for r=1:60
        md2p1(1,1)=m6(r,c,1)+md2p1(1,1);
    end
end

mr1=mr/count;
md11=md1/count1;
md21=md2/count2;
md1p11=md1p1/count3;
md2p21=md2p2/count4;
md1p21=md1p2/count5;
md2p11=md2p1/count6;



fprintf('\n%d %d %d %d %d %d %d \n',mr1(1,1),md11(1,1),md21(1,1),md1p11(1,1),md2p21(1,1),md1p21(1,1),md2p11(1,1));
matris(ife,:)=[mr1(1,1),md11(1,1),md21(1,1),md1p11(1,1),md2p21(1,1),md1p21(1,1),md2p11(1,1)];

end
figure;imshow(r12);
figure;plot(matris(:,1),'m:');
hold;
plot(matris(:,2),'r--');
plot(matris(:,3),'b*-');
plot(matris(:,4),'g^-');
plot(matris(:,5),'y--');
plot(matris(:,6),'c^-');
plot(matris(:,7),'m+-');
legend('reference','dna1', 'dna2','dna1pna1','dna2pna2','dna1pna2','dna2pna1') 
%title('dna compare');
