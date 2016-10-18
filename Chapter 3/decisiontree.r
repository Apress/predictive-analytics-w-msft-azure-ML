library(rpart)

# Map 1-based optional input ports to variables
Dataset1 <- maml.mapInputPort(1) # class: data.frame

fit <- rpart(income ~ age + sex + education + occupation,method="class", data=Dataset1)

# display the results, and summary of the splits
printcp(fit)
plotcp(fit)
summary(fit)

# plot the decision tree
plot(fit, uniform=TRUE, margin = 0.1,compress = TRUE,
main="Classification Tree for Census Dataset")
text(fit, use.n=TRUE, all=TRUE, cex=0.8, pretty=1)

data.set = Dataset1

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("data.set");