# File name: seasonalityTidalRange-3.R
# Date: November 2013
# Author: Phillip Burger
# Project: seasonality-of-tidal-range
# This program: Builds vectors containing the high and low ater levels for each
#   station. Future work is to put code into a loop or otherwise generalize it.
#
# Water levels for Nome (9468756) and Prudhoe Bay (9497645) appear irregular 
# when plotted. Data for these two stations was removed. The source of the 
# irregularity may be sea ice.  
# Obtain the range

# Build vectors containing all readings for one region and one season.
lowWtrRangeData <- c(low1820000WtrData$highWater - low1820000WtrData$lowWater)
lowWtrRangeData <- c(lowWtrRangeData, low1890000WtrData$highWater - low1890000WtrData$lowWater)
lowWtrRangeData <- c(lowWtrRangeData, low1617760WtrData$highWater - low1617760WtrData$lowWater)
lowWtrRangeData <- c(lowWtrRangeData, low1631428WtrData$highWater - low1631428WtrData$lowWater)
lowWtrRangeData <- c(lowWtrRangeData, low1611400WtrData$highWater - low1611400WtrData$lowWater)

lowSprRangeData <-  c(low1820000SprData$highWater - low1820000SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1890000SprData$highWater - low1890000SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1617760SprData$highWater - low1617760SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1631428SprData$highWater - low1631428SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1611400SprData$highWater - low1611400SprData$lowWater)

lowSumRangeData <- c(low1820000SumData$highWater - low1820000SumData$lowWater)
lowSumRangeData <- c(lowSumRangeData, low1890000SumData$highWater - low1890000SumData$lowWater)
lowSumRangeData <- c(lowSumRangeData, low1617760SumData$highWater - low1617760SumData$lowWater)
lowSumRangeData <- c(lowSumRangeData, low1631428SumData$highWater - low1631428SumData$lowWater)
lowSumRangeData <- c(lowSumRangeData, low1611400SumData$highWater - low1611400SumData$lowWater)

midWtrRangeData <- c(mid9410230WtrData$highWater - mid9410230WtrData$lowWater)
midWtrRangeData <- c(midWtrRangeData, mid9411406WtrData$highWater - mid9411406WtrData$lowWater)
midWtrRangeData <- c(midWtrRangeData, mid9415020WtrData$highWater - mid9415020WtrData$lowWater)
midWtrRangeData <- c(midWtrRangeData, mid9416841WtrData$highWater - mid9416841WtrData$lowWater)
midWtrRangeData <- c(midWtrRangeData, mid9431647WtrData$highWater - mid9431647WtrData$lowWater)

midSprRangeData <- c(mid9410230SprData$highWater - mid9410230SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9411406SprData$highWater - mid9411406SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9415020SprData$highWater - mid9415020SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9416841SprData$highWater - mid9416841SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9431647SprData$highWater - mid9431647SprData$lowWater)

midSumRangeData <- c(mid9410230SumData$highWater - mid9410230SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9411406SumData$highWater - mid9411406SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9415020SumData$highWater - mid9415020SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9416841SumData$highWater - mid9416841SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9431647SumData$highWater - mid9431647SumData$lowWater)

highWtrRangeData <- c(high9450460WtrData$highWater - high9450460WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9451600WtrData$highWater - high9451600WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9453220WtrData$highWater - high9453220WtrData$lowWater)

highSprRangeData <- c(high9450460SprData$highWater - high9450460SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9451600SprData$highWater - high9451600SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9453220SprData$highWater - high9453220SprData$lowWater)

highSumRangeData <- c(high9450460SumData$highWater - high9450460SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9451600SumData$highWater - high9451600SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9453220SumData$highWater - high9453220SumData$lowWater)

# mean by region by season
lowWtrMean <- mean(lowWtrRangeData)
lowSprMean <- mean(lowSprRangeData)
lowSumMean <- mean(lowSumRangeData)

midWtrMean <- mean(midWtrRangeData)
midSprMean <- mean(midSprRangeData)
midSumMean <- mean(midSumRangeData)

highWtrMean <- mean(highWtrRangeData)
highSprMean <- mean(highSprRangeData)
highSumMean <- mean(highSumRangeData)