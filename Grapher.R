#pulls data into martix within R from the text file
ball_data<-read.table("UWvMSU_1-22-13.txt",header=TRUE,sep = "\t")

#segments matrix based on team and creates a new matrix for each team
UW_data=ball_data[ball_data[,2]=="UW", ]
MSU_data=ball_data[ball_data[,2]=="MSU", ]

#removes team data now that it has been segmented
UW_data$team <- NULL
MSU_data$team <- NULL

#for each team, a new column is created which contains the cumulative score at each time
UW_data[,"cum_score"] <- cumsum(UW_data$score)
MSU_data[,"cum_score"] <- cumsum(MSU_data$score)

#removes the original score data as it is no longer needed
UW_data$score <- NULL
MSU_data$score <- NULL

#takes the data and plots it with some fancy graphics
plot(UW_data[,1],UW_data[,2],type='l', xlab="time(min)", ylab="score",col="green")
lines(MSU_data[,1],MSU_data[,2],col= "orange")
legend("bottomright", inset=.05, title= "Team",
   c("UW","MSU"), fill=terrain.colors(3), horiz=TRUE)