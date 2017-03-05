readLines("http://www.runningzone.com/wp-content/uploads/2016/03/Corporate-5K-Individual-Results-2016.txt")->dat
grep("^(=+\\s*)+$",dat) -> n
strsplit(dat[n],"")[[1]] -> dat2
grep(" ",dat2) -> indx
indx[-length(indx)] -> indx

dat[-c(1:(n-2),n)]->dat
for(i in indx) substr(dat,i,i) <- ";"

writeLines(dat,con="2016_5K_Results.txt")
fread("2016_5K_Results.txt", header=T, sep=";") -> dat
# read.csv("2016_5K_Results.txt",header=T,stringsAsFactors=F)->dd
# read.csv("2016_5K_Results.txt",header=T,stringsAsFactors=F,strip.white = TRUE, na.strings = "")->dd
# as.data.table(dat)->dat
dat[-is.na(Net)]->dat
setkey(dat,Net,Sex,Age)
fx<-function(x) { x<-as.numeric(x); if(length(x)==4) x[1]*60+x[2]+x[3]/60 else x[1]+x[2]/60 }
# unlist(lapply(strsplit(dat$Net,split="\\W"), fx))
unlist(lapply(strsplit(dat$Net,split="\\W"), fx))->dat$time

dat[,Age:=as.numeric(Age)]
dat[Sex=="M" & Age<55 & Age>=50]
fivenum(dat[Sex=="M" & Age<55 & Age>=50]$time)
