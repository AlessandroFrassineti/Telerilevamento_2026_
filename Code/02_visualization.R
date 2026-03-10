# R code for visualizing satellite images

library(terra)
library(imageRy)
library(ggplot2)

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

library(ggplot2)

?im.ggplot
im.list
b2 <- im.import("sentinel.dolomites.b2.tif")
b3 <- im.import("sentinel.dolomites.b3.tif")
b4 <- im.import("sentinel.dolomites.b4.tif")
b8 <- im.import("sentinel.dolomites.b8.tif")

im.ggplot(b8)
install.packages("patchwork")
library(patchwork)

p1 <- im.ggplot(b8)
p2 <- im.ggplot(b4)
p1 + p2

par(mfrow=c(1,2))
im.multiframe(1,2)
stack
ggplot2 patchwork

#RGB plotting
sentinel <- c(b2, b3, b4, b8)


#1=b2 blue
#2=b3 green
#3=b4 red
#4=b8 nir

#3 filters and 4 bands
im.plotRGB(sentinel, r=3, g=2, b=1) # natural colors
im.plotRGB(sentinel, r=4, g=3, b=2) # false colors

im.multiframe(1,2)
im.plotRGB(sentinel, r=3, g=2, b=1) # natural colors
im.plotRGB(sentinel, r=4, g=3, b=2) # false colors

plot(sentinel[[4]])
im.plotRGB(sentinel, r=4, g=3, b=2)

dev.off()
im.plotRGB(sentinel, r=3, g=4, b=2)
im.multiframe(2,1)
im.plotRGB(sentinel, r=3, g=4, b=2)
im.plotRGB(sentinel, r=3, g=2, b=4)

im.multiframe(2,2)
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=3, g=4, b=2)
im.plotRGB(sentinel, r=3, g=2, b=4)
im.plotRGB(sentinel, r=3, g=2, b=1)

dev.off()
im.multiframe(1,2)
im.plotRGB(sentinel, r=4, g=3, b=2)
im.plotRGB(sentinel, r=4, g=2, b=3)

pairs(sentinel)

#simpler
im.plotRGB(sentinel, 4, 2, 3)

plotRGB(sentinel, 4, 2, 3, stretch="lin")
plotRGB(sentinel, 4, 2, 3, stretch="hist")
