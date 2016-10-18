# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1)
# Perform PCA on the first 190 columns
pca = prcomp(dataset1[,1:190])

# Return the top 10 principal components
top_pca_scores = data.frame(pca$x[,1:10])
data.set = top_pca_scores
plot(data.set)

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("data.set");