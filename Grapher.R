ball_data<-read.table("UWvMSU_1-22-13.txt",header=TRUE,sep = "\t")
UW_data=ball_data[ball_data[,2]=="UW", ]
MSU_data=ball_data[ball_data[,2]=="MSU", ]
UW_data$team <- NULL
MSU_data$team <- NULL
UW_data[,"cum_score"] <- cumsum(UW_data$score)
MSU_data[,"cum_score"] <- cumsum(MSU_data$score)
UW_data$score <- NULL
MSU_data$score <- NULL
plot(UW_data[,1],UW_data[,2],type='l', xlab="time(min)", ylab="score",col="green")
lines(MSU_data[,1],MSU_data[,2],col= "orange")
legend("bottomright", inset=.05, title= "Team",
   c("UW","MSU"), fill=terrain.colors(3), horiz=TRUE)