#You can use code you wrote for the correlation exercise here.
source("ContinuousFunctions")
tree <- read.tree("____PATH_TO_TREE_OR_SOME_OTHER_WAY_OF_GETTING_A_TREE____")
discrete.data <- read.csv(file="____PATH_TO_DATA_OR_SOME_OTHER_WAY_OF_GETTING_TRAITS____", stringsAsFactors=FALSE) #death to factors.
continuous.data <- read.csv(file="____PATH_TO_DATA_OR_SOME_OTHER_WAY_OF_GETTING_TRAITS____", stringsAsFactors=FALSE) #death to factors.

cleaned.continuous <- CleanData(tree, continuous.data)
cleaned.discrete <- CleanData(tree, discrete.data)
VisualizeData(tree, cleaned.continuous)
VisualizeData(tree, cleaned.discrete)

#First, start basic. What is the rate of evolution of your trait on the tree? 

BM1 <- fitContinuous(tree, cleaned.continuous, model="BM")
print(paste("The rate of evolution is", _____, "in units of", _______))
#Important: What are the rates of evolution? In what units?
OU1 <- fitContinuous(tree, cleaned.continuous, model="OU")
par(mfcol(c(1,2)))
plot(tree, show.tip.label=FALSE)
ou.tree <- rescale(tree, model="OU", ___alpha____)
plot(ou.tree)
#How are the trees different?

#Compare trees
AIC.BM1 <- ________FIGURE_OUT_HOW_TO_DO_THIS_____
AIC.OU1 <- ________FIGURE_OUT_HOW_TO_DO_THIS_____
delta.AIC.BM1 <- ________FIGURE_OUT_HOW_TO_DO_THIS_____
delta.AIC.OU1 <- ________FIGURE_OUT_HOW_TO_DO_THIS_____



#OUwie runs:
#This takes longer than you may be used to. 
#We're a bit obsessive about doing multiple starts and in general
#performing a thorough numerical search. It took you 3+ years
#to get the data, may as well take an extra five minutes to 
#get an accurate answer
nodeBased.OUMV <- OUwie(tree, cleaned.continuous,model="OUMV", simmap.tree=FALSE, diagn=FALSE)
print(nodeBased.OUMV)
#What do the numbers mean?

#Now run all OUwie models:
models <- c("BM1","BMS","OU1","OUM","OUMV","OUMA","OUMVA")
results <- lapply(models, RunSingleOUwieModel, phy=tree, data=trait)

