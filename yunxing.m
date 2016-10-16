 
 load('star_train.txt')
 load('star_test.txt')
 A=zeros(5,4);
 for i=1:5
     [A(i,1),A(i,2),A(i,3),A(i,4)]=ELM('star_train.txt','star_test.txt',1,200,'sig');
 end
 A=mean(A)