# R code for visualizing satellite images

library(terra)
library(imageRy)

install.packages("viridis")
library(viridis)
#listing data
im.list()
#importing images
b2 <- im.import("sentinel.dolomites.b2.tif")
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

b2 <- im.import("sentinel.dolomites.b2.tif")

#importing
im.list()
b3 <- im.import("sentinel.dolomites.b3.tif")

b8 <- im.import("sentinel.dolomites.b8.tif")

cl <- colorRampPalette(c("gray81", "gray67", "gray61"))(100)
plot(b2, col=cl)
cl2 <- colorRampPalette(c("blue", "blue3", "blue4"))(100)
plot(b3, col=cl2)

cl3 <- colorRampPalette(c("dark green", "green", "light green"))(100)
plot(b4, col=cl3)
par(mfrow=c(1,2))
plot(b3, col=cl2(100))
plot(b4, col=cl3(100))

sentinel <- c(b2, b3, b4, b8)
plot(sentinel)
plot(sentinel, col=inferno(100))
sentinel 

plot(sentinel$sentinel.dolomites.b8)

dev.off()

#layer1=b2, layer2=b3, layer3=b4, layer4=b8
plot(sentinel[[4]])
plot(sentinel[[2]])     
