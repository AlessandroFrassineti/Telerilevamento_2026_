library(imageRy) # beloved package developed at unibo
library(terra)
library(viridis)
im.list()
mato1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
mato1992 <- flip(mato1992)
# l1=NIR l2=red l3=green
im.plotRGB(mato1992, 1, 2, 3)
im.plotRGB(mato1992, r=2, g=1, b=3)
im.plotRGB(mato1992, r=3, g=2, b=1)
mato1992
mato2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
mato2006 <- flip(mato2006)
im.plotRGB(mato2006, 1, 2, 3)
im.multiframe(1,2)
# NIR ontop of red
im.plotRGB(mato1992, r=1, g=2, b=3)
im.plotRGB(mato2006, r=1, g=2, b=3)
plotRGB(mato1992, 1, 2, 3, stretch="hist")
plotRGB(mato2006, 1, 2, 3, stretch="hist")
im.plotRGB(mato1992, 2, 3, 1)
im.plotRGB(mato2006, 2, 3, 1)

dvi1992 <- mato1992[[1]] - mato1992[[2]]
plot(dvi1992)
im.plotRGB(mato1992, r=1, g=2, b=3)

#NIR - red = 255 - 0 = 255 max DVI
#NIR - red = 0 - 255 = -255 min DVI
# range = -255, 255
ndvi1992 = (mato1992[[1]] - mato1992[[2]]) / (mato1992[[1]] + mato1992[[2]])
ndvi2006 = (mato2006[[1]] - mato2006[[2]]) / (mato2006[[1]] + mato2006[[2]])
im.multiframe(1, 2)
plot(ndvi1992)
plot(ndvi2006)

dvi1992 = im.dvi(mato1992, 1, 2)
dvi2006 = im.dvi(mato2006, 1, 2)
plot(dvi1992, col=inferno(100))
plot(dvi2006, col=inferno(100))


