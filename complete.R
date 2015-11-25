complete <- function(directory,id=1:332){
files_list<-list.files(directory,full.names=TRUE)
result<-data.frame()
for(i in id){
a<-read.csv(files_list[i])
a_without_na<-na.omit(a)
nobs<-nrow(a_without_na)
result<-rbind(result,data.frame(i,nobs))
}
result
}
