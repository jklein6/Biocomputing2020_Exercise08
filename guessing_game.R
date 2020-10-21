guess<-NULL
rand_num<-NULL
guess <- "place holder"
rand_num<-round(runif(1)*100,digits=0)

while(guess != rand_num)
{
  guess<-as.integer(readline(prompt = "Guess a number between 0 and 100:"))
  if(guess==rand_num)
  {
    cat("You did it,", rand_num, "is right!")
  }
  else if(guess<rand_num)
  {
    cat("Higher, guess again!")
  }
  else if(guess>rand_num)
  {
    cat("Lower, guess again!")
  }
}