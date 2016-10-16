%% ��ջ�������
clc
clear
%% ѵ������Ԥ������
data=importdata('test.txt');
%��1��768���������
k=rand(1,768);
[m,n]=sort(k);
%�����������
input=data(:,1:8);
output =data(:,9);
%�����ȡ500������Ϊѵ��������268������ΪԤ������
input_train=input(n(1:500),:)';
output_train=output(n(1:500),:)';
input_test=input(n(501:768),:)';
output_test=output(n(501:768),:)';
%�������ݹ�һ��
[inputn,inputps]=mapminmax(input_train);
%% BP����ѵ��
% %��ʼ������ṹ
net=newff(inputn,output_train,10);
net.trainParam.epochs=1000;
net.trainParam.lr=0.1;
net.trainParam.goal=0.0000004;
%% ����ѵ��
net=train(net,inputn,output_train);
%% BP����Ԥ��
%Ԥ�����ݹ�һ��
inputn_test=mapminmax('apply',input_test,inputps);
 
%����Ԥ�����
BPoutput=sim(net,inputn_test);
%% �������
%������������ҳ�������������
BPoutput(find(BPoutput<0.5))=0;
BPoutput(find(BPoutput>=0.5))=1;
%% �������
%����Ԥ�������ʵ������ķ���ͼ
figure(1)
plot(BPoutput,'og')
hold on
plot(output_test,'r*');
legend('Ԥ�����','������')
title('BP����Ԥ�������ʵ�����ȶ�','fontsize',12)
ylabel('����ǩ','fontsize',12)
xlabel('������Ŀ','fontsize',12)
ylim([-0.5 1.5])

%Ԥ����ȷ��
rightnumber=0;
for i=1:size(output_test,2)
    if BPoutput(i)==output_test(i)
        rightnumber=rightnumber+1;
    end
end
rightratio=rightnumber/size(output_test,2)*100;
sprintf('����׼ȷ��=%0.2f',rightratio)