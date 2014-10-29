library(ggplot2)
library(RCurl)

url3 <- paste0("https://raw.githubusercontent.com/jrwolf/","IT497/master/", "fitstats.csv")
exam3 <- getURL(url3)
examdata3 <- read.csv(textConnection(exam3), sep = ",", header = T)

examdata3$Steps <- gsub(pattern = "RT @JennMamaBear: 4,997", replacement = "4997", x = examdata3$Steps, ignore.case=TRUE)

ggplot(examdata3, aes(x = Steps, y = Miles)) + geom_point(shape = 1) + ggtitle("Steps versus Miles")
