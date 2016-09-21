#checking speed of calculations
response <- function(DT)

     DT <- fread("communities.csv")
     
print(system.time(mean(DT[DT$SEX==1,]$pwgtp15),  mean(DT[DT$SEX==2,]$pwgtp15)))
op2 <<- system.time(DT[,mean(pwgtp15),by=SEX])
op3 <<- system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
op4 <<- system.time(tapply(DT$pwgtp15,DT$SEX,mean))
op5 <<- system.time(mean(DT$pwgtp15,by=DT$SEX))
op6 <<- system.time(rowMeans(DT)[DT$SEX==1], rowMeans(DT)[DT$SEX==2])
