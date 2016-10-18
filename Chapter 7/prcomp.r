# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1) # class: data.frame

# Sample operation
titles_categories = dataset1[,1:2]
pca = prcomp(dataset1[,4:4099])
top_pca_scores = data.frame(pca$x[,1:10])
data.set = cbind(titles_categories,top_pca_scores)

# You'll see this output in the R Device port.
# It'll have your stdout, stderr and PNG graphics device(s).
plot(pca)

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("data.set");