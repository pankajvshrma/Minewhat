data <- read.csv("D:/products.csv",header=TRUE)
col<- c(5,6)
for(i in col)
{
  data[,i] <- as.numeric(data[,i])
}


for(i in 1:ncol(data))
{

if (class(data[,i])== 'numeric' )
  {
median=median(data[,i],na.rm=TRUE)
   for(j in 1:nrow(data))
     {
      if(is.na(data[j,i]))
        data[j,i]= median
         
       }
}
}

write.table(x=data,file="C:/Users/pankaj/Documents/data2.csv",sep=",",quote=TRUE,row.names=FALSE,eol="\n",col.names=TRUE)
