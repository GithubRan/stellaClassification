clear all;
close all;
clc;
load k1sng510_unit;
maxk1=max(k1sng510_unit);
mink1=min(k1sng510_unit);
k1=zeros(2258,3522);
for i=1:2258
    for j=1:3522
        k1(i,j)=(k1sng510_unit(i,j)-mink1(j))/(maxk1(j)-mink1(j));
    end
end
load k3sng510_unit;
maxk3=max(k3sng510_unit);
mink3=min(k3sng510_unit);
k3=zeros(3104,3522);
for i=1:3104
    for j=1:3522
        k3(i,j)=(k3sng510_unit(i,j)-mink3(j))/(maxk3(j)-mink3(j));
    end
end

load k5sng510_unit;
maxk5=max(k5sng510_unit);
mink5=min(k5sng510_unit);
k5=zeros(2957,3522);
for i=1:2957
    for j=1:3522
        k5(i,j)=(k5sng510_unit(i,j)-mink5(j))/(maxk5(j)-mink5(j));
    end
end

load k7sng510_unit;
maxk7=max(k7sng10_unit);
mink7=min(k7sng10_unit);
k7=zeros(2795,3522);
for i=1:2795
    for j=1:3522
        k7(i,j)=(k7sng10_unit(i,j)-mink7(j))/(maxk7(j)-mink7(j));
    end
end
save guiyihua k1 k3 k5 k7
