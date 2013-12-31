# load data and prepare table data
# Write out a summary table
low = c(lowWtrMean, lowSprMean, lowSumMean)
mid = c(midWtrMean, midSprMean, midSumMean)
high = c(highWtrMean, highSprMean, highSumMean)
dfTemp1 <- data.frame(region = "Low latitude",
                      season = "Winter",
                      mean = round(low[1], 3))
dfTemp2 <- data.frame(region = "Low latitude",
                      season = "Spring",
                      mean = round(low[2], 3))
dfTemp3 <- data.frame(region = "Low latitude",
                      season = "Summer",
                      mean = round(low[3], 3))
summaryTable1 <- rbind(dfTemp1, dfTemp2, dfTemp3)
#
dfTemp1 <- data.frame(region = "Mid latitude",
                      season = "Winter",
                      mean = round(mid[1], 3))
dfTemp2 <- data.frame(region = "Mid latitude",
                      season = "Spring",
                      mean = round(mid[2], 3))
dfTemp3 <- data.frame(region = "Mid latitude",
                      season = "Summer",
                      mean = round(mid[3], 3))
summaryTable1 <- rbind(summaryTable1, dfTemp1, dfTemp2, dfTemp3)
#
dfTemp1 <- data.frame(region = "High latitude",
                      season = "Winter",
                      mean = round(high[1], 3))
dfTemp2 <- data.frame(region = "High latitude",
                      season = "Spring",
                      mean = round(high[2], 3))
dfTemp3 <- data.frame(region = "High latitude",
                      season = "Summer",
                      mean = round(high[3], 3))
summaryTable1 <- rbind(summaryTable1, dfTemp1, dfTemp2, dfTemp3)