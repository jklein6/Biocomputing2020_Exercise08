#resets the game if values from previous game are still present
guess<-NULL
rand_num<-NULL

#creates variables needed for game, including the random number that the user will have to guess
guess <- "place holder"
rand_num<-round(runif(1)*100,digits=0)

#asks the user for an integer and tells them if random number is higher or lower. 
#ends the loop if they guess right.
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