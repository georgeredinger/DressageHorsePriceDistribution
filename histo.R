data <- read.csv("prices.dat")
print(data[,1])
png(filename="histo.png")
hist(data[,1],breaks=20)
dev.off()

