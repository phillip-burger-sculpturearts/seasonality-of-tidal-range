# File name: seasonalityTidalRange-5.R
# Date: November 2013
# Author: Phillip Burger
# Project: seasonality-of-tidal-range
# This program: Load data and prepare table data summaryTable1 for final plot.
# 
# Water levels for Nome (9468756) and Prudhoe Bay (9497645) appear irregular 
# when plotted. Data for these two stations was removed. The source of the 
# irregularity may be sea ice.  

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