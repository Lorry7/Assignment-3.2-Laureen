cheat <- function(Assignment_Number){
  if(Assignment_Number == 1){
    cat(paste(
      "grades <- round(rnorm(70, mean = 7.5, sd = 1.5)*2, digits = 0)/2", "\n",
      "while(any(grades<0 | grades>10)){", "\n",
      "grades <- round(rnorm(70, mean = 7.5, sd = 1.5)*2, digits = 0)/2", "\n",
      "}", "\n",
      "hist(grades)"
    ))
  }else if(Assignment_Number == 16){
    cat(paste(
      "matrix(data = 1:9, nrow = 3, ncol = 3, byrow = TRUE) * 1:3"
    ))
  }else if(Assignment_Number == 7){
    cat(paste(
      "cars <- cars", "\n", "ggplot(data = cars, mapping = aes(x = speed, y = dist))+", "\n",
      "geom_point()+ ##could change size (size = ) and shape (shape =) of points as well", "\n",
      'geom_smooth(method = "loess", formula = y ~ x)'
    ))
  }else{
    print("Sorry, we don't have an answer for that question :/")
  }
}
cheat(2)