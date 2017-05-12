####################################################################################
###
### R script to create achievement over time figure
###
####################################################################################

### Load packages

require(xkcd)


### Create figure

data <- data.frame(x1=c(1,2), y1=c(10,20), xend=c(2.5,0.5), yend=c(20,10), model=c("low","high"))

pdf(file="test.pdf")
xrange <- range(mtcars$mpg)
yrange <- range(mtcars$wt)
p <- ggplot() +
geom_point(aes(mpg, wt), data=mtcars) +
xkcdaxis(xrange,yrange)
p
#ggplot() + xkcdline(mapping=aes(xbegin=x1 +y1, ybegin=y1, xend =xend, yend= yend, color = model), data=data)
dev.off()
