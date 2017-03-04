readLines("http://www.runningzone.com/wp-content/uploads/2016/03/Corporate-5K-Individual-Results-2016.txt")->dat
grep("^(=+\\s*)+$",dat) -> n
strsplit(dat[n],"")[[1]] -> dat2
grep(" ",dat2) -> indx
indx[-length(indx)] -> indx

dat[-c(1:(n-2),n)]->dat
for(i in indx) substr(dat,i,i)<-","

dat
writeLines(dat,row.names=F,file="2016_5K_Results.txt")
writeLines(dat,row.names=F,con="2016_5K_Results.txt")
writeLines(dat,con="2016_5K_Results.txt")
fread("2016_5K_Results.txt",header=T)->dd
dd
readLines("2016_5K_Results.txt",5)
read.csv("2016_5K_Results.txt",header=T)->dd
dd
dd[1:10,]
dd[,-13]
dd[1:5,-13]
dd[,-13]->dat
str(dat)
read.csv("2016_5K_Results.txt",header=T,stringsAsFactors=F)->dd
str(dat)
str(dd)
read.csv("2016_5K_Results.txt",header=T,stringsAsFactors=F,strip.white = TRUE, na.strings = "")->dd
str(dd)
dd[,-13]->dat
dat
str(dat)
?as.ts
dd[,c(4,5,9)]->dat
dat
nchar(dat$Net)
as.data.table(dat)->dat
dat
setkey(dat,Net,Sex,Age)
dat
dat[NA]
dat[Net==NA]
dat[Net=="NA"]
dat[is.nas(Net)]
dat[is.na(Net)]
dat[-is.na(Net)]->dat
dat
dat[-(1:2)]
dat[-(1:12)]
dat[-(1:12)]->dat
dat[nchar(Net==7),
strsplit(dat[1,],split=":")
strsplit(dat[1,3],split=":")
strsplit(dat[1,],split="\:")
strsplit(dat[1,],split="/:")
strsplit(dat[1,3],split=":")
strsplit(dat[1,3],":")
strsplit(dat[1,3],split="/:")
dat[1,3]
dat$Net[1]
strsplit(dat$Net[1],split=":")
strsplit(dat$Net[1],split="\\w")
strsplit(dat$Net[1],split="//w")
strsplit(dat$Net[1],split="\w")
strsplit(dat$Net[1],split="\\w")
strsplit(dat$Net[1],split="\\W")
strsplit(dat$Net,split="\\W")[[1]]
strsplit(dat$Net,split="\\W")
lapply(strsplit(dat$Net,split="\\W"), fx
lapply(strsplit(dat$Net,split="\\W"), fx<-function(x) {x[1]+x[2]/60}
lapply(strsplit(dat$Net,split="\\W"), fx<-function(x) {x[1]+x[2]/60} )
lapply(strsplit(dat$Net,split="\\W"), fx<-function(as.numeric(x)) {x[1]+x[2]/60} )
fx<-function(as.numeric(x))
fx<-function(as.numeric(x)) x[1]+x[2]/60
fx<-function(x) { x<-as.numeric(x); x[1]+x[2]/60 }
fx
lapply(strsplit(dat$Net,split="\\W"), fx)
lapply(strsplit(dat[nchar(Net)==7,Net],split="\\W"), fx)
lapply(strsplit(dat[nchar(Net)==9,Net],split="\\W"), fx)
fx<-function(x) { x<-as.numeric(x); if(length(x)==4) x[1]*60+x[2]+x[3]/60 else x[1]+x[2]/60 }
lapply(strsplit(dat$Net,split="\\W"), fx)
unlist(lapply(strsplit(dat$Net,split="\\W"), fx))
unlist(lapply(strsplit(dat$Net,split="\\W"), fx))->dat$time
dat
setkey(dat,time)
dat
str(dat)
dat[,Age:=as.numeric(Age)]
str(dat)
summary(dat)
dat(Sex=="M" & Age<55 & Age>=50)
dat[Sex=="M" & Age<55 & Age>=50]
fivenum(dat[Sex=="M" & Age<55 & Age>=50])$time
fivenum(dat[Sex=="M" & Age<55 & Age>=50]$time)
?fivenum
load("rdat/2017/20170221.rdat")
X[Actor1CountryCode!="" & Actor2CountryCode!=""]->X
X
X$Actors<-paste0(Actor1CountryCode,"-",Actor2CountryCode)
X$Actors<-paste0(X$Actor1CountryCode,"-",X$Actor2CountryCode)
length(unique(X$Actors))
history(max.show=Inf)
q()
