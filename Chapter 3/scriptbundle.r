# Map 1-based optional input ports to variables
dataset1 <- maml.mapInputPort(1)

# Contents of optional Zip port are in ./src/
source("src/pcaexample.r");

# Select data.frame to be sent to the output Dataset port
maml.mapOutputPort("data.set");