clear all;
close all;
clc;
load k1sng510_unit;
load k3sng510_unit;
load k5sng510_unit;
load k7sng510_unit;
datatemp=[k1sng510_unit;
      k3sng510_unit;
      k5sng510_unit;
      k7sng10_unit];
  a=randperm(11114);
  datas=datatemp(a,:);
%   data=data1(1:8000,:);
%   testdata=data1(8001:11114,:);
datatemplabels=[zeros(2258,1)+1;
    zeros(3104,1)+2;
    zeros(2957,1)+3;
    zeros(2795,1)+4];
label=datatemplabels(a,:);
% datalabels=label(1:8000,:);
% testlabels=label(8001:11114,:);
save datas
save label
