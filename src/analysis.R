tigerData <- read.csv(url("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2aDeathsFromTigers.csv"))
head(tigerData)
tigerTable <- sort(table(tigerData$activity), decreasing = TRUE)
tigerTable
pdf("barplot.pdf")
barplot(tigerTable, ylab = "Frequency", cex.names = 0.5, las = 2)
dev.off()


