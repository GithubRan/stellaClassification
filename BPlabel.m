clc;
clear;
load datalabels.mat
load testlabels.mat
 alllabel=[datalabels';testlabels];
bplabel=zeros(11114,4);
for i=1:11114
    if alllabel(i)==1
        bplabel(i,:)=[1,0,0,0];
    else if alllabel(i)==2
            bplabel(i,:)=[0,1,0,0];
        else if alllabel(i)==3
                bplabel(i,:)=[0,0,1,0];
            else bplabel(i,:)=[0,0,0,1];
            end
        end
    end
end
load mydata.mat
alldata=[data;testdata];
                
