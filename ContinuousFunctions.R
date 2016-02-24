library(ape) #utility fns
library(geiger) #utilty fns
library(OUWie)

#You can use code you wrote for the correlation exercise here.


VisualizeData <- function(phy, data) {
	#Important here is to LOOK at your data before running it. Any weird values? Does it all make sense? What about your tree? Polytomies?
}

CleanData <- function(phy, data) {
	#treedata() in Geiger is probably my favorite function in R.
}

RunSingleOUwieModel<-function(model, phy, data) {
	print(paste("Now starting model",model))
	return(OUwie(phy, data, model, simmap.tree=FALSE, diagn=FALSE))	
}
