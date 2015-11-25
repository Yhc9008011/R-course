corr <- function(directory, threshold = 0){
corrfiles<-list.files(directory,full.names=TRUE)
results<-numeric()
for(i in 1:length(corrfiles))
{
corrdata<-read.csv(corrfiles[i])
a_without_na<-na.omit(corrdata)
nobs<-nrow(a_without_na)
if(nobs>threshold){
results[i]<-cor(a_without_na[,2],a_without_na[,3])
}
}
results
}
