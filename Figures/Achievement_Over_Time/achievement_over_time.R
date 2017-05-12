####################################################################################
###
### R script to create achievement over time figure
###
####################################################################################

### Load packages

require(svglite)


### Create figure

svglite(file="achievement_over_time.svg", width=5, height=3)
plot(x=1:10)
dev.off()
