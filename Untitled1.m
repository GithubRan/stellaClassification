clear all;
close all;
clc;
load guiyihua

datatemp=[k1;
      k3;
      k5;
      k7];
  a=randperm(11114);
  
  data1=datatemp(a,:);
  [pca,score,latent]=princomp(k3);
  
%rate=cumsum(latent)./sum(latent);
 data1=data1*pca;
 data1=data1(:,1:50);

  data=data1(1:8000,:);
  testdata=data1(8001:11114,:);
datatemplabels=[zeros(2258,1)+1;
    zeros(3104,1)+2;
    zeros(2957,1)+3;
    zeros(2795,1)+4];
label=datatemplabels(a,:);
datalabels=label(1:8000,:);
testlabels=label(8001:11114,:);
save mydata data datalabels testdata testlabels
load mydata
% star_train=cat(2,datalabels,data);
% star_test=cat(2,testlabels,testdata);
% save star_train star_train
% save star_test star_test
% load star_test.mat
% save star_test.txt -ASCII star_test
% load star_train.mat
% save star_train.txt -ASCII star_train 


