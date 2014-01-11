# File name: seasonalityTidalRange-1.R
# Date: November 2013
# Author: Phillip Burger
# Project: seasonality-of-tidal-range
# This program: Builds vectors containing the high and low ater levels for each
#   station. Future work is to put code into a loop or otherwise generalize it.
#
# Some stations do have missing data. Source data is stored as an atomic vector
#   and represent readings as a time series. Ok to remove NA values.
# 
# Water levels for Nome (9468756) and Prudhoe Bay (9497645) appear irregular 
# when plotted. Data for these two stations was removed. The source of the 
# irregularity may be sea ice.  

low1820000WtrData <- buildWaterLevels(na.omit(low1820000Wtr$Water.Level))
low1890000WtrData <- buildWaterLevels(na.omit(low1890000Wtr$Water.Level))
low1617760WtrData <- buildWaterLevels(na.omit(low1617760Wtr$Water.Level))
low1631428WtrData <- buildWaterLevels(na.omit(low1631428Wtr$Water.Level))
low1611400WtrData <- buildWaterLevels(na.omit(low1611400Wtr$Water.Level))

low1820000SprData <- buildWaterLevels(na.omit(low1820000Spr$Water.Level))
low1890000SprData <- buildWaterLevels(na.omit(low1890000Spr$Water.Level))
low1617760SprData <- buildWaterLevels(na.omit(low1617760Spr$Water.Level))
low1631428SprData <- buildWaterLevels(na.omit(low1631428Spr$Water.Level))
low1611400SprData <- buildWaterLevels(na.omit(low1611400Spr$Water.Level))

low1820000SumData <- buildWaterLevels(na.omit(low1820000Sum$Water.Level))
low1890000SumData <- buildWaterLevels(na.omit(low1890000Sum$Water.Level))
low1617760SumData <- buildWaterLevels(na.omit(low1617760Sum$Water.Level))
low1631428SumData <- buildWaterLevels(na.omit(low1631428Sum$Water.Level))
low1611400SumData <- buildWaterLevels(na.omit(low1611400Sum$Water.Level))

mid9410230WtrData <- buildWaterLevels(na.omit(mid9410230Wtr$Water.Level))
mid9411406WtrData <- buildWaterLevels(na.omit(mid9411406Wtr$Water.Level))
mid9415020WtrData <- buildWaterLevels(na.omit(mid9415020Wtr$Water.Level))
mid9416841WtrData <- buildWaterLevels(na.omit(mid9416841Wtr$Water.Level))
mid9431647WtrData <- buildWaterLevels(na.omit(mid9431647Wtr$Water.Level))

mid9410230SprData <- buildWaterLevels(na.omit(mid9410230Spr$Water.Level))
mid9411406SprData <- buildWaterLevels(na.omit(mid9411406Spr$Water.Level))
mid9415020SprData <- buildWaterLevels(na.omit(mid9415020Spr$Water.Level))
mid9416841SprData <- buildWaterLevels(na.omit(mid9416841Spr$Water.Level))
mid9431647SprData <- buildWaterLevels(na.omit(mid9431647Spr$Water.Level))

mid9410230SumData <- buildWaterLevels(na.omit(mid9410230Sum$Water.Level))
mid9411406SumData <- buildWaterLevels(na.omit(mid9411406Sum$Water.Level))
mid9415020SumData <- buildWaterLevels(na.omit(mid9415020Sum$Water.Level))
mid9416841SumData <- buildWaterLevels(na.omit(mid9416841Sum$Water.Level))
mid9431647SumData <- buildWaterLevels(na.omit(mid9431647Sum$Water.Level))

high9450460WtrData <- buildWaterLevels(na.omit(high9450460Wtr$Water.Level))
high9451600WtrData <- buildWaterLevels(na.omit(high9451600Wtr$Water.Level))
high9453220WtrData <- buildWaterLevels(na.omit(high9453220Wtr$Water.Level))

high9450460SprData <- buildWaterLevels(na.omit(high9450460Spr$Water.Level))
high9451600SprData <- buildWaterLevels(na.omit(high9451600Spr$Water.Level))
high9453220SprData <- buildWaterLevels(na.omit(high9453220Spr$Water.Level))

high9450460SumData <- buildWaterLevels(na.omit(high9450460Sum$Water.Level))
high9451600SumData <- buildWaterLevels(na.omit(high9451600Sum$Water.Level))
high9453220SumData <- buildWaterLevels(na.omit(high9453220Sum$Water.Level))