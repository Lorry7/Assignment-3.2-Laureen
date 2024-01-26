library(ggplot2)
library(tibble)

make_art <- function(seed = 0, color_slope = "darkgreen", background_color = "yellow"){
  
  
  if(seed != 0){
    set.seed(seed)
  }
  
  art <- tibble(
    x = rnorm(50, mean = 22.4, sd = 14.7), ##you have to use = for this function somehow
    y = runif(50, min = 100, max = 200),
    x2 = x + runif(50, min = -5, max = 5),
    y2 = y + runif(50),
    size = runif(50, min = 2, max = 10),
    shade = sample(letters,50, replace = TRUE)
  )
  
  if(art[1,5] < 6){ ##just to bring some random variation
    ggplot(data = art, mapping = aes(x = x2, y = y, color = y)) +
      geom_point(size = 1000, show.legend = FALSE, color = background_color)+
      geom_line(size = 80, show.legend = FALSE, lineend = "round")+
      theme_void()+
      coord_polar()+
      geom_rug(aes(size = y2), sides = "bltr", show.legend = FALSE, color = "lightgreen")+
      geom_abline(aes(intercept = x, slope = y), color = color_slope, size = 10)
  }else{ ##this will be rectangular
    ggplot(data = art, mapping = aes(x = x2, y = y, color = y)) +
      geom_point(size = 1000, show.legend = FALSE, color = background_color)+
      geom_line(size = 80, show.legend = FALSE, lineend = "butt")+
      theme_void()+
      #coord_polar()+
      geom_rug(aes(size = y2), sides = "bltr", show.legend = FALSE, color = "lightgreen")+
      geom_abline(aes(intercept = x, slope = y), color = color_slope, size = 10)
  }
}
make_art()