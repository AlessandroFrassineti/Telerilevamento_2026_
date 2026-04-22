# Code to for classifying images

library(terra)
library(imageRy)
setwd("~\Desktop")

im.list()

sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

?im.classify
  
sunc <- im.classify(sun, num_clusters=3)
sunc <- im.classify(sun, num_clusters=3, seed=19)

can <- im.import( "dolansprings_oli_2013088_canyon_lrg.jpg" )

canc <- im.classify(can, num_clusters=4, seed=19)







m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg") 
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")  
im.multiframe(1,2)
plot(m1992)
plot(m2006)
m1992c <- im.classify(m1992, seed=19, num_clusters=2)

# Assign labels
levels(m1992c) <- data.frame(value = c(1, 2),label = c("forest", "human"))

m2006c <- im.classify(m2006, seed=42, num_clusters=2)
# Assign labels
levels(m2006c) <- data.frame(value = c(2, 1),label = c("forest", "human"))

f1992 <- freq(m1992c) 

f2006 <- freq(m2006c) 

prop2006 <- f2006$count / ncell(m2006c)

perc2006 <- prop2006 * 100

tabout <- data.frame(class=c("Forest","Human"), perc1992=c(83, 17), perc2006=c(45, 55))
