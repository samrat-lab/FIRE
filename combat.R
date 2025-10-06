library(sva)

dat = read.csv("Combat_matrix_input.csv");
sif = read.csv("sif.csv");
modcombat = model.matrix(~1, data=dat)

newdata = ComBat(dat=dat, batch=sif$Batch, mod=NULL, par.prior=TRUE, prior.plots=TRUE)