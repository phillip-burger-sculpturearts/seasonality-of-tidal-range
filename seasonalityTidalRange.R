# File name: seasonalityTidalRange.R
# Author: Phillip Burger
# Project: seasonality-of-tidal-range
# This program: Builds high and low water vecctors used to determine tidal range.
# Description of the algorithm: We don't know if the first observation is a high
#   water, low water, on the way up, or on the way down. Definition of tidal
#   range is a high water minus the follow low water. Locate first high water
#   then the low water, and so on, until finished. Start by finding the trend. If
#   down, then skip first low water and find the following high water. If trend
#   is up, then start filling vector with this high water. At the end, take the 
#   elements in the shorter of the two vectors.

# Consumes water level data for one, 29-day period. Calcuates high and low 
#   water using the algorithm described in the file description.  
# Preconditions: Data for one period. Complete observations. 
#   Incomplete data removed prior to passing.  
# Postconditions: none 
# Parameters: waterLevel - data set contains water level observations.
# Return: Two element list. First element is high water, second is low water.
buildWaterLevels <- function(waterLevel = waterLevel) {
  highWater <- rep(0, 60)
  lowWater <- rep(0, 60)
	i <- 1  # index for high water
	j <- 1  # index for low water
	k <- firstHighWater(head(waterLevel, 250))  # get first high water
	highWater[i] <- waterLevel[k]
	i <- i + 1
	lookForHighWater <- FALSE  # find high tide if TRUE, find low tide if FALSE
	# traverse readings between ebb and flow, build tide levels at flood and ebb
	moreObs <- TRUE
	while (moreObs) {
		# look for next high tide, build high water.
		if (lookForHighWater) {
		  k <- k + 25  # skip near water to avoid false maxima
		  k <- k + tryCatch(getHighWater(waterLevel[k:length(waterLevel)]),
        error = function(err) {
          moreObs <- FALSE
        },
        finally = {})  # catch array out of bounds error
      highWater[i] <- waterLevel[k]
      i <- i + 1
		  lookForHighWater <- FALSE
		} else {
  		  k <- k + 25  # skip near water to avoid false minima
        k <- k + tryCatch(getLowWater(waterLevel[k:length(waterLevel)]),
          error = function(err) {
            moreObs <- FALSE
          },
          finally = {})  # catch array out of bounds error
        lowWater[j] <- waterLevel[k]
        j <- j + 1
        lookForHighWater <- TRUE  		  
		}
    if (k + 25 > length(waterLevel)) {
			moreObs <- FALSE
		}
	}
  # number of elements with content be same length or highWater 1 longer
  if (i > j) {
    j <- j - 1
    highWater <- highWater[1:j]
    lowWater <- lowWater[1:j]
	} else {
    i <- i - 1
	  highWater <- highWater[1:i]
	  lowWater <- lowWater[1:i]     
	}
	return(list(highWater = highWater, lowWater = lowWater))	
}

# Helper function, find the first high tide for the observed period. This
#   function is called just one time. 
# Preconditions: 500 observations are passed in
# Postconditions: none.
# Parameters: waterLevel-data set containing first observations for the period.
# Return: Two element list. First element is high water, second is low water.
firstHighWater <- function(waterLevel) {
	k <- 1
	# simplest case, data starts with level increasing
  if (waterLevel[k] < mean(waterLevel[(k+1):(k+6)])) {
    k <- getHighWater(waterLevel)
  # less simple, data starts with level decreasing 
  } else {
    k <- getLowWater(waterLevel)  # identity the first minima
    k <- k + getHighWater(waterLevel[(k+1):length(waterLevel)])  # then identify fresh maxima, not dirty one if data starts with tredning down.
  }
	return(k)
}

# Helper function, find the first high water level in the vector
# Parameters: waterLevel-data set containing first observations for the period.
# Return: Index location in waterLevel marking the local maxima
getHighWater <- function(waterLevel = waterLevel) {
  k <- 1
  trendingHigher <- TRUE
  while (trendingHigher) {
    if (waterLevel[k] < mean(waterLevel[(k+1):(k+7)])) {
      k <- k + 1
    } else {
      k <- (k - 1) + which.max(waterLevel[k:(k+8)])
      trendingHigher <- FALSE  # found high tide, return k
    }
  }
  return(k)
}

# Helper function, find the first low water level in the vector
# Parameters: waterLevel-data set containing first observations for the period.
# Return: Index location in waterLevel marking the first local minima
getLowWater <- function(waterLevel) {
  k <- 1
  trendingLower <- TRUE
  while (trendingLower) {
    if (waterLevel[k] > mean(waterLevel[(k+1):(k+7)])) {
      k <- k + 1
    } else {
      k <- (k - 1) + which.min(waterLevel[k:(k+8)])
      trendingLower <- FALSE  # found low tide, return k
    }
  }
  return(k)
}