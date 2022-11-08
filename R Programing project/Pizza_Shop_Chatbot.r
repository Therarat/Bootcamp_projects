print("Welcome to 'PharKung Pizza Shop' ^_^")
print("What's you name ?")
  cust_name <- readLines("stdin", n=1)
print(paste("Hello khun", cust_name, ",Good day to you"))
            ##Order pizza or not order pizza

  count3 <- 0
while(count3 >= 0){
  count3 <- count3 + 1
  print("Would you like to order some Pizza ? 'Y' or 'N' ")
  cust_ans <- readLines("stdin", n=1)
if(cust_ans == "Y"){   
  print("Please type the favor you like ?")
  print("Hawaiian (20$)")
  print("Source pepper (20$)")
  print("Seafood (30$)")
  print("Somtam Palar (20$)")
  
  count1 <- 0
  while (count1 >= 0){   
            ##Order Pizza favor
  cust_ans2 <- readLines("stdin", n=1)
  count1 <- count1 + 1 
    
  if(cust_ans2 == "Hawaiian"| cust_ans2 == "Source pepper"| cust_ans2 == "Seafood"|cust_ans2 == "Somtam Palar"){
  
    print(paste("Cool! the", cust_ans2,"is the best seller"))
    break  
  }else {
    print("Please type again")}
  }

   if(cust_ans2 == "Hawaiian"){
    price <- 20
  }else if(cust_ans2 == "Source pepper"){
    price <- 20
  }else if(cust_ans2 == "Seafood"){
    price <- 30
  }else if(cust_ans2 == "Somtam Palar"){
    price <- 20
  }
              ## Order How many order ?
  print("How many order would you like ?")
  cust_ans3 <- as.numeric(readLines("stdin", n=1))
  print(paste("So,You preferred the", cust_ans2 ,"for", cust_ans3,"Pcs"))
    total_price <- price * cust_ans3
    dis_total_price <- price * cust_ans3 * 0.9
  
  count2 <- 0
  while(count2 >= 0){
     print("Would you like For here '1' or To go '2'(To go is 10% discount) ")
  cust_ans4 <- as.numeric(readLines("stdin", n=1))
    count2 <- count2 + 1
    if(cust_ans4 == 1){
      print(paste("Your order is",cust_ans2 ,"for",cust_ans3, "Pcs"))
      print(paste("Thank you, The total price is", total_price))
      break
    }else if (cust_ans4 == 2){
      print(paste("Your order is",cust_ans2 ,"for",cust_ans3, "Pcs"))
      print(paste("You got discount from", total_price, "to", dis_total_price))
      break
    }else {print("Please select '1' or '2'")}
  }
 break 
}
else if(cust_ans == "N"){
print(paste("See you again next time Khun", cust_name))
  break
} else {print("Please select 'Y' or 'N'")}

}
