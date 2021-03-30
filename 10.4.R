###ML2 Team 18 10.4 PCA###
rm(list=ls())


states<-row.names(USArrests )
states

names(USArrests)#The columns of the data set contain the four variables.

apply(USArrests , 2, mean)#there are on average three times as many rapes as murders, and more than eight times as many assaults as rapes.


apply(USArrests , 2, var)

pr.out=prcomp(USArrests , scale=TRUE)#scale the variables to have standard deviation one.
names(pr.out)
pr.out$center
pr.out$scale
pr.out$rotation


dim(pr.out$x)
biplot (pr.out , scale =0)

pr.out$rotation=-pr.out$rotation
pr.out$x=-pr.out$x
biplot (pr.out , scale =0)



pr.out$sdev
pr.var=pr.out$sdev ^2
pr.var

pve=pr.var/sum(pr.var)
pve

plot(pve , xlab=" Principal Component ", ylab="Proportion of Variance Explained ", ylim=c(0,1),type='b')
plot(cumsum(pve), xlab="Principal Component ", ylab="Cumulative Proportion of Variance Explained ", ylim=c(0,1),type='b')

a<-c(1,2,8,-3)
cumsum(a) #computes the cumulative sum of the elements of a numeric vector
