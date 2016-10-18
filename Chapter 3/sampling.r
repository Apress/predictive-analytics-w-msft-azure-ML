# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1) # class: data.frame
mysample <- dataset1[sample(1:nrow(dataset1), 50, replace=FALSE),]

data.set = mysample
print (mysample)

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("data.set");