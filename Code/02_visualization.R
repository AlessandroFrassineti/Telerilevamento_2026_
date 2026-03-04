# R code for visualizing satellite images

library(terra)
library(imageRy)

install.packages("viridis")
library(viridis)
#listing data
im.list()
#importing images
b2 <- im.import("")
#changing colors
cl <- colorRampPalette(c("darkolivegreen", "brown1", "gold"))(100)
plot(b2, col=cl)

plot(b2, col=inferno(100))

plot(b2, col=mako(100))

cl <- colorRampPalette(c("gray81", "gray67", "gray61"))(100)
plot(b2, col=cl)

#obrobrio installato da cran
par(mfrow=c(1,2))
plot(b2, col=cl(100))
plot(b2, col=inferno(100))

dev.off()
