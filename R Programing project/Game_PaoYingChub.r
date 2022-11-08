print("Hello , Welcome to our game 'PaoYingChub'")

random <- c("rock", "paper", "scissor") 
win <- 0
lost <- 0
withdraw <- 0

count1 <- 0
while(count1 >= 0){
  count1 = count1 + 1
  cat("Please choose the number below options. \n|1|Rock |2|Paper\n|3|Scissor |4|quit -> for Exit the game \n ")
  
  com <- sample(random , size =1)
  
  count2 <- 0
  while(count2 >=0){
      count2 = count2 + 1
      player <- readLines("stdin", n=1)
      if(player == 1 | player == 2 | player == 3 | player ==4){
      break
      }else { print("Please choose '1', '2', '3', '4'")}
    }
      
  
  if(player == 1 & com == "paper"){
    lost = lost + 1
    print("You lost :P")
  }else if (player == 1 & com == "rock"){
    withdraw = withdraw + 1
    print("You withdraw")
  }else if (player == 1 & com == "scissor"){
    win = win + 1
    print("You won ^_^")
  }else if (player == 2 & com == "paper"){
    withdraw = withdraw + 1
    print("You withdraw")
  }else if (player == 2 & com == "rock"){
    win = win + 1
    print("You won ^_^")
  }else if (player == 2 & com == "scissor"){
    lost = lost + 1
    print("You lost :P")
  }else if (player == 3 & com == "paper"){
    win = win + 1
    print("You won ^_^")
  }else if (player == 3 & com == "rock"){
    lost = lost + 1 
    print("You lost :P")
  }else if(player == 3 & com == "scissor"){
    withdraw = withdraw + 1
    print("You withdraw")
  }else if (player == 4){
  break
  }  

print(paste("Your competitor is", com))
print(paste("You have won totally for", win))
print(paste("You have lost totally for", lost))
print(paste("You have withdraw totally for", withdraw))  
}

print("See you again next time !!! ^_^ ")
