# File name: seasonalityTidalRange-4.R
# Date: November 2013
# Author: Phillip Burger
# Project: seasonality-of-tidal-range
# This program: Builds table data displayed in the gVis table
# 
# Water levels for Nome (9468756) and Prudhoe Bay (9497645) appear irregular 
# when plotted. Data for these two stations was removed. The source of the 
# irregularity may be sea ice.  

regions <- c(rep("low", 15), rep("mid", 15), rep("high", 9))
names <- c(rep(c("Nawiliwili, HI", 
	"Hilo Bay, HI",
	"Pago Bay, Guam",
	"Marshall Islands",
	"Wake Island"), 3),
	
	rep(c("La Jolla, CA",
	"Oil Platform Harvest, CA",
	"Point Reyes, CA",
	"Arena Cove, CA",
	"Port Orford, OR"), 3),
	
	rep(c("Ketchikan, AK",	
	"Sitka, AK",
	"Yakutat Bay, AK"), 3))
stationID <- c(rep(c(1611400, 
	1617760,
	1631428,
	1820000,
	1890000), 3),
	
	rep(c(9410230,
	9411406,
	9415020,
	9416841,
	9431647), 3),
	
	rep(c(9450460,
	9451600,
	9453220), 3))

nHighWater <- c(length(low1611400WtrData$highWater),
  length(low1617760WtrData$highWater),
  length(low1631428WtrData$highWater),
  length(low1820000WtrData$highWater),
  length(low1890000WtrData$highWater),
  
  length(low1611400SprData$highWater),
  length(low1617760SprData$highWater),
  length(low1631428SprData$highWater),
  length(low1820000SprData$highWater),
  length(low1890000SprData$highWater),
  
  length(low1611400SumData$highWater),
  length(low1617760SumData$highWater),
  length(low1631428SumData$highWater),
  length(low1820000SumData$highWater),
  length(low1890000SumData$highWater),
  
  length(mid9410230WtrData$highWater),
  length(mid9411406WtrData$highWater),
  length(mid9415020WtrData$highWater),
  length(mid9416841WtrData$highWater),
  length(mid9431647WtrData$highWater),
  
  length(mid9410230SprData$highWater),
  length(mid9411406SprData$highWater),
  length(mid9415020SprData$highWater),
  length(mid9416841SprData$highWater),
  length(mid9431647SprData$highWater),
  
  length(mid9410230SumData$highWater),
  length(mid9411406SumData$highWater),
  length(mid9415020SumData$highWater),
  length(mid9416841SumData$highWater),
  length(mid9431647SumData$highWater),
  
  length(high9450460WtrData$highWater),
  length(high9451600WtrData$highWater),
  length(high9453220WtrData$highWater),
  
  length(high9450460SprData$highWater),
  length(high9451600SprData$highWater),
  length(high9453220SprData$highWater),
  
  length(high9450460SumData$highWater),
  length(high9451600SumData$highWater),
  length(high9453220SumData$highWater))

nLowWater <- c(length(low1611400WtrData$lowWater),
  length(low1617760WtrData$lowWater),
  length(low1631428WtrData$lowWater),
  length(low1820000WtrData$lowWater),
  length(low1890000WtrData$lowWater),
               
  length(low1611400SprData$lowWater),
  length(low1617760SprData$lowWater),
  length(low1631428SprData$lowWater),
  length(low1820000SprData$lowWater),
  length(low1890000SprData$lowWater),
  
  length(low1611400SumData$lowWater),
  length(low1617760SumData$lowWater),
  length(low1631428SumData$lowWater),
  length(low1820000SumData$lowWater),
  length(low1890000SumData$lowWater),
  
  length(mid9410230WtrData$lowWater),
  length(mid9411406WtrData$lowWater),
  length(mid9415020WtrData$lowWater),
  length(mid9416841WtrData$lowWater),
  length(mid9431647WtrData$lowWater),
  
  length(mid9410230SprData$lowWater),
  length(mid9411406SprData$lowWater),
  length(mid9415020SprData$lowWater),
  length(mid9416841SprData$lowWater),
  length(mid9431647SprData$lowWater),
  
  length(mid9410230SumData$lowWater),
  length(mid9411406SumData$lowWater),
  length(mid9415020SumData$lowWater),
  length(mid9416841SumData$lowWater),
  length(mid9431647SumData$lowWater),
  
  length(high9450460WtrData$lowWater),
  length(high9451600WtrData$lowWater),
  length(high9453220WtrData$lowWater),
  
  length(high9450460SprData$lowWater),
  length(high9451600SprData$lowWater),
  length(high9453220SprData$lowWater),
  
  length(high9450460SumData$lowWater),
  length(high9451600SumData$lowWater),
  length(high9453220SumData$lowWater))
  
nLowWater <- c(length(low1611400WtrData$lowWater),
  length(low1617760WtrData$lowWater),
  length(low1631428WtrData$lowWater),
  length(low1820000WtrData$lowWater),
  length(low1890000WtrData$lowWater),
  
  length(low1611400SprData$lowWater),
  length(low1617760SprData$lowWater),
  length(low1631428SprData$lowWater),
  length(low1820000SprData$lowWater),
  length(low1890000SprData$lowWater),
  
  length(low1611400SumData$lowWater),
  length(low1617760SumData$lowWater),
  length(low1631428SumData$lowWater),
  length(low1820000SumData$lowWater),
  length(low1890000SumData$lowWater),
  
  length(mid9410230WtrData$lowWater),
  length(mid9411406WtrData$lowWater),
  length(mid9415020WtrData$lowWater),
  length(mid9416841WtrData$lowWater),
  length(mid9431647WtrData$lowWater),
  
  length(mid9410230SprData$lowWater),
  length(mid9411406SprData$lowWater),
  length(mid9415020SprData$lowWater),
  length(mid9416841SprData$lowWater),
  length(mid9431647SprData$lowWater),
  
  length(mid9410230SumData$lowWater),
  length(mid9411406SumData$lowWater),
  length(mid9415020SumData$lowWater),
  length(mid9416841SumData$lowWater),
  length(mid9431647SumData$lowWater),
  
  length(high9450460WtrData$lowWater),
  length(high9451600WtrData$lowWater),
  length(high9453220WtrData$lowWater),
  
  length(high9450460SprData$lowWater),
  length(high9451600SprData$lowWater),
  length(high9453220SprData$lowWater),
  
  length(high9450460SumData$lowWater),
  length(high9451600SumData$lowWater),
  length(high9453220SumData$lowWater))

tidalRangeMean <- c(mean(low1611400WtrData$highWater - low1611400WtrData$lowWater),
  mean(low1617760WtrData$highWater - low1617760WtrData$lowWater),
  mean(low1631428WtrData$highWater - low1631428WtrData$lowWater),
  mean(low1820000WtrData$highWater - low1820000WtrData$lowWater),
  mean(low1890000WtrData$highWater - low1890000WtrData$lowWater),
  
  mean(low1611400SprData$highWater - low1611400SprData$lowWater),
  mean(low1617760SprData$highWater - low1617760SprData$lowWater),
  mean(low1631428SprData$highWater - low1631428SprData$lowWater),
  mean(low1820000SprData$highWater - low1820000SprData$lowWater),
  mean(low1890000SprData$highWater - low1890000SprData$lowWater),
  
  mean(low1611400SumData$highWater - low1611400SumData$lowWater),
  mean(low1617760SumData$highWater - low1617760SumData$lowWater),
  mean(low1631428SumData$highWater - low1631428SumData$lowWater),
  mean(low1820000SumData$highWater - low1820000SumData$lowWater),
  mean(low1890000SumData$highWater - low1890000SumData$lowWater),
  
  mean(mid9410230WtrData$highWater - mid9410230WtrData$lowWater),
  mean(mid9411406WtrData$highWater - mid9411406WtrData$lowWater),
  mean(mid9415020WtrData$highWater - mid9415020WtrData$lowWater),
  mean(mid9416841WtrData$highWater - mid9416841WtrData$lowWater),
  mean(mid9431647WtrData$highWater - mid9431647WtrData$lowWater),
  
  mean(mid9410230SprData$highWater - mid9410230SprData$lowWater),
  mean(mid9411406SprData$highWater - mid9411406SprData$lowWater),
  mean(mid9415020SprData$highWater - mid9415020SprData$lowWater),
  mean(mid9416841SprData$highWater - mid9416841SprData$lowWater),
  mean(mid9431647SprData$highWater - mid9431647SprData$lowWater),
  
  mean(mid9410230SumData$highWater - mid9410230SumData$lowWater),
  mean(mid9411406SumData$highWater - mid9411406SumData$lowWater),
  mean(mid9415020SumData$highWater - mid9415020SumData$lowWater),
  mean(mid9416841SumData$highWater - mid9416841SumData$lowWater),
  mean(mid9431647SumData$highWater - mid9431647SumData$lowWater),
  
  mean(high9450460WtrData$highWater - high9450460WtrData$lowWater),
  mean(high9451600WtrData$highWater - high9451600WtrData$lowWater),
  mean(high9453220WtrData$highWater - high9453220WtrData$lowWater),
  
  mean(high9450460SprData$highWater - high9450460SprData$lowWater),
  mean(high9451600SprData$highWater - high9451600SprData$lowWater),
  mean(high9453220SprData$highWater - high9453220SprData$lowWater),
  
  mean(high9450460SumData$highWater - high9450460SumData$lowWater),
  mean(high9451600SumData$highWater - high9451600SumData$lowWater),
  mean(high9453220SumData$highWater - high9453220SumData$lowWater))
  
tidalRangeSD <- c(sd(low1611400WtrData$highWater - low1611400WtrData$lowWater),
  sd(low1617760WtrData$highWater - low1617760WtrData$lowWater),
  sd(low1631428WtrData$highWater - low1631428WtrData$lowWater),
  sd(low1820000WtrData$highWater - low1820000WtrData$lowWater),
  sd(low1890000WtrData$highWater - low1890000WtrData$lowWater),
  
  sd(low1611400SprData$highWater - low1611400SprData$lowWater),
  sd(low1617760SprData$highWater - low1617760SprData$lowWater),
  sd(low1631428SprData$highWater - low1631428SprData$lowWater),
  sd(low1820000SprData$highWater - low1820000SprData$lowWater),
  sd(low1890000SprData$highWater - low1890000SprData$lowWater),
  
  sd(low1611400SumData$highWater - low1611400SumData$lowWater),
  sd(low1617760SumData$highWater - low1617760SumData$lowWater),
  sd(low1631428SumData$highWater - low1631428SumData$lowWater),
  sd(low1820000SumData$highWater - low1820000SumData$lowWater),
  sd(low1890000SumData$highWater - low1890000SumData$lowWater),
  
  sd(mid9410230WtrData$highWater - mid9410230WtrData$lowWater),
  sd(mid9411406WtrData$highWater - mid9411406WtrData$lowWater),
  sd(mid9415020WtrData$highWater - mid9415020WtrData$lowWater),
  sd(mid9416841WtrData$highWater - mid9416841WtrData$lowWater),
  sd(mid9431647WtrData$highWater - mid9431647WtrData$lowWater),
  
  sd(mid9410230SprData$highWater - mid9410230SprData$lowWater),
  sd(mid9411406SprData$highWater - mid9411406SprData$lowWater),
  sd(mid9415020SprData$highWater - mid9415020SprData$lowWater),
  sd(mid9416841SprData$highWater - mid9416841SprData$lowWater),
  sd(mid9431647SprData$highWater - mid9431647SprData$lowWater),
  
  sd(mid9410230SumData$highWater - mid9410230SumData$lowWater),
  sd(mid9411406SumData$highWater - mid9411406SumData$lowWater),
  sd(mid9415020SumData$highWater - mid9415020SumData$lowWater),
  sd(mid9416841SumData$highWater - mid9416841SumData$lowWater),
  sd(mid9431647SumData$highWater - mid9431647SumData$lowWater),
  
  sd(high9450460WtrData$highWater - high9450460WtrData$lowWater),
  sd(high9451600WtrData$highWater - high9451600WtrData$lowWater),
  sd(high9453220WtrData$highWater - high9453220WtrData$lowWater),
  
  sd(high9450460SprData$highWater - high9450460SprData$lowWater),
  sd(high9451600SprData$highWater - high9451600SprData$lowWater),
  sd(high9453220SprData$highWater - high9453220SprData$lowWater),
  
  sd(high9450460SumData$highWater - high9450460SumData$lowWater),
  sd(high9451600SumData$highWater - high9451600SumData$lowWater),
  sd(high9453220SumData$highWater - high9453220SumData$lowWater))

summaryTable2 <- data.frame(region = regions,
	stationID = stationID,
	stationName = names,
	season = c(rep("winter", 5), rep("spring", 5), rep("summer", 5),
		rep("winter", 5), rep("spring", 5), rep("summer", 5),
		rep("winter", 3), rep("spring", 3), rep("summer", 3)),
  n = nHighWater,
	highWaterMean = c(mean(low1611400WtrData$highWater),
		mean(low1617760WtrData$highWater),
		mean(low1631428WtrData$highWater),
		mean(low1820000WtrData$highWater),
		mean(low1890000WtrData$highWater),
		
		mean(low1611400SprData$highWater),
		mean(low1617760SprData$highWater),
		mean(low1631428SprData$highWater),
		mean(low1820000SprData$highWater),
		mean(low1890000SprData$highWater),
		
		mean(low1611400SumData$highWater),
		mean(low1617760SumData$highWater),
		mean(low1631428SumData$highWater),
		mean(low1820000SumData$highWater),
		mean(low1890000SumData$highWater),
		
		mean(mid9410230WtrData$highWater),
		mean(mid9411406WtrData$highWater),
		mean(mid9415020WtrData$highWater),
		mean(mid9416841WtrData$highWater),
		mean(mid9431647WtrData$highWater),
		
		mean(mid9410230SprData$highWater),
		mean(mid9411406SprData$highWater),
		mean(mid9415020SprData$highWater),
		mean(mid9416841SprData$highWater),
		mean(mid9431647SprData$highWater),
		
		mean(mid9410230SumData$highWater),
		mean(mid9411406SumData$highWater),
		mean(mid9415020SumData$highWater),
		mean(mid9416841SumData$highWater),
		mean(mid9431647SumData$highWater),
		
		mean(high9450460WtrData$highWater),
		mean(high9451600WtrData$highWater),
		mean(high9453220WtrData$highWater),
	
		mean(high9450460SprData$highWater),
		mean(high9451600SprData$highWater),
		mean(high9453220SprData$highWater),
	
		mean(high9450460SumData$highWater),
		mean(high9451600SumData$highWater),
		mean(high9453220SumData$highWater)),
	
	highWaterSD = c(sd(low1611400WtrData$highWater),
		sd(low1617760WtrData$highWater),
		sd(low1631428WtrData$highWater),
		sd(low1820000WtrData$highWater),
		sd(low1890000WtrData$highWater),
		
		sd(low1611400SprData$highWater),
		sd(low1617760SprData$highWater),
		sd(low1631428SprData$highWater),
		sd(low1820000SprData$highWater),
		sd(low1890000SprData$highWater),
		
		sd(low1611400SumData$highWater),
		sd(low1617760SumData$highWater),
		sd(low1631428SumData$highWater),
		sd(low1820000SumData$highWater),
		sd(low1890000SumData$highWater),
		
		sd(mid9410230WtrData$highWater),
		sd(mid9411406WtrData$highWater),
		sd(mid9415020WtrData$highWater),
		sd(mid9416841WtrData$highWater),
		sd(mid9431647WtrData$highWater),
		
		sd(mid9410230SprData$highWater),
		sd(mid9411406SprData$highWater),
		sd(mid9415020SprData$highWater),
		sd(mid9416841SprData$highWater),
		sd(mid9431647SprData$highWater),
		
		sd(mid9410230SumData$highWater),
		sd(mid9411406SumData$highWater),
		sd(mid9415020SumData$highWater),
		sd(mid9416841SumData$highWater),
		sd(mid9431647SumData$highWater),
		
		sd(high9450460WtrData$highWater),
		sd(high9451600WtrData$highWater),
		sd(high9453220WtrData$highWater),
		
		sd(high9450460SprData$highWater),
		sd(high9451600SprData$highWater),
		sd(high9453220SprData$highWater),
		
		sd(high9450460SumData$highWater),
		sd(high9451600SumData$highWater),
		sd(high9453220SumData$highWater)),
	lowWaterMean = c(mean(low1611400WtrData$lowWater),
		mean(low1617760WtrData$lowWater),
		mean(low1631428WtrData$lowWater),
		mean(low1820000WtrData$lowWater),
		mean(low1890000WtrData$lowWater),
		
		mean(low1611400SprData$lowWater),
		mean(low1617760SprData$lowWater),
		mean(low1631428SprData$lowWater),
		mean(low1820000SprData$lowWater),
		mean(low1890000SprData$lowWater),
		
		mean(low1611400SumData$lowWater),
		mean(low1617760SumData$lowWater),
		mean(low1631428SumData$lowWater),
		mean(low1820000SumData$lowWater),
		mean(low1890000SumData$lowWater),
		
		mean(mid9410230WtrData$lowWater),
		mean(mid9411406WtrData$lowWater),
		mean(mid9415020WtrData$lowWater),
		mean(mid9416841WtrData$lowWater),
		mean(mid9431647WtrData$lowWater),
		
		mean(mid9410230SprData$lowWater),
		mean(mid9411406SprData$lowWater),
		mean(mid9415020SprData$lowWater),
		mean(mid9416841SprData$lowWater),
		mean(mid9431647SprData$lowWater),
		
		mean(mid9410230SumData$lowWater),
		mean(mid9411406SumData$lowWater),
		mean(mid9415020SumData$lowWater),
		mean(mid9416841SumData$lowWater),
		mean(mid9431647SumData$lowWater),
		
		mean(high9450460WtrData$lowWater),
		mean(high9451600WtrData$lowWater),
		mean(high9453220WtrData$lowWater),
		
		mean(high9450460SprData$lowWater),
		mean(high9451600SprData$lowWater),
		mean(high9453220SprData$lowWater),
		
		mean(high9450460SumData$lowWater),
		mean(high9451600SumData$lowWater),
		mean(high9453220SumData$lowWater)),
	
	lowWaterSD = c(sd(low1611400WtrData$lowWater),
		sd(low1617760WtrData$lowWater),
		sd(low1631428WtrData$lowWater),
		sd(low1820000WtrData$lowWater),
		sd(low1890000WtrData$lowWater),
		
		sd(low1611400SprData$lowWater),
		sd(low1617760SprData$lowWater),
		sd(low1631428SprData$lowWater),
		sd(low1820000SprData$lowWater),
		sd(low1890000SprData$lowWater),
		
		sd(low1611400SumData$lowWater),
		sd(low1617760SumData$lowWater),
		sd(low1631428SumData$lowWater),
		sd(low1820000SumData$lowWater),
		sd(low1890000SumData$lowWater),
		
		sd(mid9410230WtrData$lowWater),
		sd(mid9411406WtrData$lowWater),
		sd(mid9415020WtrData$lowWater),
		sd(mid9416841WtrData$lowWater),
		sd(mid9431647WtrData$lowWater),
		
		sd(mid9410230SprData$lowWater),
		sd(mid9411406SprData$lowWater),
		sd(mid9415020SprData$lowWater),
		sd(mid9416841SprData$lowWater),
		sd(mid9431647SprData$lowWater),
		
		sd(mid9410230SumData$lowWater),
		sd(mid9411406SumData$lowWater),
		sd(mid9415020SumData$lowWater),
		sd(mid9416841SumData$lowWater),
		sd(mid9431647SumData$lowWater),
		
		sd(high9450460WtrData$lowWater),
		sd(high9451600WtrData$lowWater),
		sd(high9453220WtrData$lowWater),
		
		sd(high9450460SprData$lowWater),
		sd(high9451600SprData$lowWater),
		sd(high9453220SprData$lowWater),
		
		sd(high9450460SumData$lowWater),
		sd(high9451600SumData$lowWater),
		sd(high9453220SumData$lowWater)),
                            
    tidalRangeMean = tidalRangeMean,
    tidalRangeSD = tidalRangeSD)

summaryTable2$highWaterMean <- round(summaryTable2$highWaterMean, digits = 3)
summaryTable2$highWaterSD <- round(summaryTable2$highWaterSD, digits = 3)
summaryTable2$lowWaterMean <- round(summaryTable2$lowWaterMean, digits = 3)
summaryTable2$lowWaterSD <- round(summaryTable2$lowWaterSD, digits = 3)
summaryTable2$tidalRangeMean <- round(summaryTable2$tidalRangeMean, digits = 3)
summaryTable2$tidalRangeSD <- round(summaryTable2$tidalRangeSD, digits = 3)