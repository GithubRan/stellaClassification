load mydata
star_train=cat(2,datalabels,data);
star_test=cat(2,testlabels,testdata);
save star_train star_train
save star_test star_test