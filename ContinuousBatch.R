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
#Important: What are the rates of evolution?

