library(sva)

############# dat will be your input expression file ##################################
dat = read.csv("Combat_matrix_input.csv");
######## sif will be your meta file which stores info about which samples belongs to which dataset and their condition ################################
sif = read.csv("sif.csv");

modcombat = model.matrix(~1, data=dat)

newdata = ComBat(dat=dat, batch=sif$Batch, mod=NULL, par.prior=TRUE, prior.plots=TRUE)
