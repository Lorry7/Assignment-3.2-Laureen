Remind_me() is used to list all the ingredients needed for sommer rolls. It takes no arguments
Cheat() gives the solution for three different questions from Assignment 3.1
  it takes only the Assignment_Number as an argument
  there are solutions provided for question 1,16 & 7
make_art() creates semi-random art 
  seed = set a seed so the created work stays the same everytime, the default is no seed
  color_slope = set the color of the slope in the art, the default is "darkgreen" 
  background_color = set the background color of your artwork, default is "yellow"


remind_me()
>What to buy for making summer rolls: 
 Tofu 
 Peanut Butter 
 Soy Sauce 
 Siracha Sauce 
 Avocado 
 Cucumber 
 Rice Noodles 
 Rice Paper 
 Honey 
 spices

cheat(1)
grades <- round(rnorm(70, mean = 7.5, sd = 1.5)*2, digits = 0)/2 
 while(any(grades<0 | grades>10)){ 
 grades <- round(rnorm(70, mean = 7.5, sd = 1.5)*2, digits = 0)/2 
 } 
 hist(grades)

cheat(2)
"Sorry, we don't have an answer for that question :/"

make_art(seed = 134, color_slope = "red")
