#
# Obtain the range
# 
low1820000WtrRange <- mean(low1820000WtrData$highWater) - mean(low1820000WtrData$lowWater)
low1890000WtrRange <- mean(low1890000WtrData$highWater) - mean(low1890000WtrData$lowWater)
low1617760WtrRange <- mean(low1617760WtrData$highWater) - mean(low1617760WtrData$lowWater)
low1631428WtrRange <- mean(low1631428WtrData$highWater) - mean(low1631428WtrData$lowWater)
low1611400WtrRange <- mean(low1611400WtrData$highWater) - mean(low1611400WtrData$lowWater)
#
low1820000SprRange <- mean(low1820000SprData$highWater) - mean(low1820000SprData$lowWater)
low1890000SprRange <- mean(low1890000SprData$highWater) - mean(low1890000SprData$lowWater)
low1617760SprRange <- mean(low1617760SprData$highWater) - mean(low1617760SprData$lowWater)
low1631428SprRange <- mean(low1631428SprData$highWater) - mean(low1631428SprData$lowWater)
low1611400SprRange <- mean(low1611400SprData$highWater) - mean(low1611400SprData$lowWater)
#
low1820000SumRange <- mean(low1820000SumData$highWater) - mean(low1820000SumData$lowWater)
low1890000SumRange <- mean(low1890000SumData$highWater) - mean(low1890000SumData$lowWater)
low1617760SumRange <- mean(low1617760SumData$highWater) - mean(low1617760SumData$lowWater)
low1631428SumRange <- mean(low1631428SumData$highWater) - mean(low1631428SumData$lowWater)
low1611400SumRange <- mean(low1611400SumData$highWater) - mean(low1611400SumData$lowWater)


mid9410230WtrRange <- mean(mid9410230WtrData$highWater) - mean(mid9410230WtrData$lowWater)
mid9411406WtrRange <- mean(mid9411406WtrData$highWater) - mean(mid9411406WtrData$lowWater)
mid9415020WtrRange <- mean(mid9415020WtrData$highWater) - mean(mid9415020WtrData$lowWater)
mid9416841WtrRange <- mean(mid9416841WtrData$highWater) - mean(mid9416841WtrData$lowWater)
mid9431647WtrRange <- mean(mid9431647WtrData$highWater) - mean(mid9431647WtrData$lowWater)
#
mid9410230SprRange <- mean(mid9410230SprData$highWater) - mean(mid9410230SprData$lowWater)
mid9411406SprRange <- mean(mid9411406SprData$highWater) - mean(mid9411406SprData$lowWater)
mid9415020SprRange <- mean(mid9415020SprData$highWater) - mean(mid9415020SprData$lowWater)
mid9416841SprRange <- mean(mid9416841SprData$highWater) - mean(mid9416841SprData$lowWater)
mid9431647SprRange <- mean(mid9431647SprData$highWater) - mean(mid9431647SprData$lowWater)
#
mid9410230SumRange <- mean(mid9410230SumData$highWater) - mean(mid9410230SumData$lowWater)
mid9411406SumRange <- mean(mid9411406SumData$highWater) - mean(mid9411406SumData$lowWater)
mid9415020SumRange <- mean(mid9415020SumData$highWater) - mean(mid9415020SumData$lowWater)
mid9416841SumRange <- mean(mid9416841SumData$highWater) - mean(mid9416841SumData$lowWater)
mid9431647SumRange <- mean(mid9431647SumData$highWater) - mean(mid9431647SumData$lowWater)


#
high9450460WtrRange <- mean(high9450460WtrData$highWater) - mean(high9450460WtrData$lowWater)
high9451600WtrRange <- mean(high9451600WtrData$highWater) - mean(high9451600WtrData$lowWater)
high9453220WtrRange <- mean(high9453220WtrData$highWater) - mean(high9453220WtrData$lowWater)
high9468756WtrRange <- mean(high9468756WtrData$highWater) - mean(high9468756WtrData$lowWater)
high9497645WtrRange <- mean(high9497645WtrData$highWater) - mean(high9497645WtrData$lowWater)

#
high9450460SprRange <- mean(high9450460SprData$highWater) - mean(high9450460SprData$lowWater)
high9451600SprRange <- mean(high9451600SprData$highWater) - mean(high9451600SprData$lowWater)
high9453220SprRange <- mean(high9453220SprData$highWater) - mean(high9453220SprData$lowWater)
high9468756SprRange <- mean(high9468756SprData$highWater) - mean(high9468756SprData$lowWater)
high9497645SprRange <- mean(high9497645SprData$highWater) - mean(high9497645SprData$lowWater)

#
high9450460SumRange <- mean(high9450460SumData$highWater) - mean(high9450460SumData$lowWater)
high9451600SumRange <- mean(high9451600SumData$highWater) - mean(high9451600SumData$lowWater)
high9453220SumRange <- mean(high9453220SumData$highWater) - mean(high9453220SumData$lowWater)
high9468756SumRange <- mean(high9468756SumData$highWater) - mean(high9468756SumData$lowWater)
high9497645SumRange <- mean(high9497645SumData$highWater) - mean(high9497645SumData$lowWater)
#


# mean by region by season
lowWtrMean <- mean(c(low1820000WtrRange,
	low1890000WtrRange,
	low1617760WtrRange,
	low1631428WtrRange,
	low1611400WtrRange))
lowSprMean <- mean(c(low1820000SprRange,
	low1890000SprRange,
	low1617760SprRange,
	low1631428SprRange,
	low1611400SprRange))
lowSumMean <- mean(c(low1820000SumRange,
	low1890000SumRange,
	low1617760SumRange,
	low1631428SumRange,
	low1611400SumRange))

midWtrMean <- mean(c(mid9410230WtrRange,
	mid9411406WtrRange,
	mid9415020WtrRange,
	mid9416841WtrRange,
	mid9431647WtrRange))
midSprMean <- mean(c(mid9410230SprRange,
	mid9411406SprRange,
	mid9415020SprRange,
	mid9416841SprRange,
	mid9431647SprRange))
midSumMean <- mean(c(mid9410230SumRange,
	mid9411406SumRange,
	mid9415020SumRange,
	mid9416841SumRange,
	mid9431647SumRange))

highWtrMean <- mean(c(high9450460WtrRange,
	high9451600WtrRange,
	high9453220WtrRange,
	high9468756WtrRange,
	high9497645WtrRange))
highSprMean <- mean(c(high9450460SprRange,
	high9451600SprRange,
	high9453220SprRange,
	high9468756SprRange,
	high9497645SprRange))
highSumMean <- mean(c(high9450460SumRange,
	high9451600SumRange,
	high9453220SumRange,
	high9468756SumRange,
	high9497645SumRange))

# vectors containing all readings for a region and season
# mean by region by season


lowWtrRangeData <- c(low1820000WtrData$highWater - low1820000WtrData$lowWater)
lowWtrRangeData <- c(lowWtrMeanData, low1890000WtrData$highWater - low1890000WtrData$lowWater)
lowWtrRangeData <- c(lowWtrMeanData, low1617760WtrData$highWater - low1617760WtrData$lowWater)
lowWtrRangeData <- c(lowWtrMeanData, low1631428WtrData$highWater - low1631428WtrData$lowWater)
lowWtrRangeData <- c(lowWtrMeanData, low1611400WtrData$highWater - low1611400WtrData$lowWater)

#
lowSprRangeData <-  c(low1820000SprData$highWater - low1820000SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1890000SprData$highWater - low1890000SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1617760SprData$highWater - low1617760SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1631428SprData$highWater - low1631428SprData$lowWater)
lowSprRangeData <-  c(lowSprRangeData, low1611400SprData$highWater - low1611400SprData$lowWater)
#
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
#
midSprRangeData <- c(mid9410230SprData$highWater - mid9410230SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9411406SprData$highWater - mid9411406SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9415020SprData$highWater - mid9415020SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9416841SprData$highWater - mid9416841SprData$lowWater)
midSprRangeData <- c(midSprRangeData, mid9431647SprData$highWater - mid9431647SprData$lowWater)
#
midSumRangeData <- c(mid9410230SumData$highWater - mid9410230SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9411406SumData$highWater - mid9411406SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9415020SumData$highWater - mid9415020SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9416841SumData$highWater - mid9416841SumData$lowWater)
midSumRangeData <- c(midSumRangeData, mid9431647SumData$highWater - mid9431647SumData$lowWater)


#
highWtrRangeData <- c(high9450460WtrData$highWater - high9450460WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9451600WtrData$highWater - high9451600WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9453220WtrData$highWater - high9453220WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9468756WtrData$highWater - high9468756WtrData$lowWater)
highWtrRangeData <- c(highWtrRangeData, high9497645WtrData$highWater - high9497645WtrData$lowWater)

#
highSprRangeData <- c(high9450460SprData$highWater - high9450460SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9451600SprData$highWater - high9451600SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9453220SprData$highWater - high9453220SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9468756SprData$highWater - high9468756SprData$lowWater)
highSprRangeData <- c(highSprRangeData, high9497645SprData$highWater - high9497645SprData$lowWater)

#
highSumRangeData <- c(high9450460SumData$highWater - high9450460SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9451600SumData$highWater - high9451600SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9453220SumData$highWater - high9453220SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9468756SumData$highWater - high9468756SumData$lowWater)
highSumRangeData <- c(highSumRangeData, high9497645SumData$highWater - high9497645SumData$lowWater)