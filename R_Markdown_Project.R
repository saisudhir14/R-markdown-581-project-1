die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)

#creating the deck of cards based on suits in a deck 
# Creating a Vector here, I'm using 'c' below in code because it has more than one element
deckSuit<-c("Spade","Diamond","Heart","Club")
deckSuit


#deckOfCards

#hand <- c("ace", "king", "queen", "jack", "ten")
#hand

#card <- c("ace", "hearts", 1)
#card
#using color factor, since there will be two colors only in deck of cards
#color <- factor(c("red", "black"))
#color

#creating a data frame to store all the elements of different datatypes
deck <- data.frame(
  face = c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six",
           "five", "four", "three", "two", "ace", "king", "queen", "jack", "ten", 
           "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace", 
           "king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five", 
           "four", "three", "two", "ace", "king", "queen", "jack", "ten", "nine", 
           "eight", "seven", "six", "five", "four", "three", "two", "ace"),  
  suit = c("spades", "spades", "spades", "spades", "spades", "spades", 
           "spades", "spades", "spades", "spades", "spades", "spades", "spades", 
           "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", 
           "clubs", "clubs", "clubs", "clubs", "clubs", "diamonds", "diamonds", 
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", 
           "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts", 
           "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", 
           "hearts", "hearts", "hearts", "hearts", "hearts"), 
  value = c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 
            7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 
            10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
)
  color = c("Black","Red")
deck

#
write.csv(deck, file = "R_Markdown_Project.csv", row.names = FALSE)
deck

#deal(deck)

# Function to deal a card from the deck from first row in a data frame

checkTheDeal <- function(deck) {
  if (nrow(deck) == 0) {
    cat("Deck of cards is empty")
    return(NULL)
  }
  
  dealingThecard <- deck[1, ]
  return(dealingThecard)
}



# Example: Dealing a card from the deck
dealingThecard <- checkTheDeal(deck)
print(dealingThecard)

deck[1,0]

deck[-(2:52), 1:3]
## face   suit value
## king spades    13

tinytex::install_tinytex()

