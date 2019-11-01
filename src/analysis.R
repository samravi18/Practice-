tigerData <- read.csv(url("http://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02e2aDeathsFromTigers.csv"))
head(tigerData)
tigerTable <- sort(table(tigerData$activity), decreasing = TRUE)
tigerTable
pdf("barplot.pdf")
barplot(tigerTable, ylab = "Frequency", cex.names = 0.5, las = 2)
dev.off()


lion <- read.csv(url("http://www.zoology.ubc.ca/~schluter/WhitlockSchluter/wp-content/data/chapter17/chap17e1LionNoses.csv"))
head(lion)
lionRegression <-lm(ageInYears ~ proportionBlack,data=lion)
sumary(lionRegression)

out<-capture.output(summary(lionRegression))
cat("Results", out, file="../results/summary.txt", sep="/n", append=FALSE)
