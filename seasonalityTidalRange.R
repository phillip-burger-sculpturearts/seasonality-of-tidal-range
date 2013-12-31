# seasonalityTidalRange.R
#
# build high and low water
buildWaterLevels <- function(waterLevel = waterLevel) {
	lowWater <- rep(0, 60)
	highWater <- rep(0, 60)
	i <- 1  # index for high water
	j <- 1  # index for low water
	# get first low tide
	k <- firstLowTide(head(waterLevel, 500))
	lowWater[j] <- waterLevel[k]
	j <- j + 1
	lookForHighTide <- TRUE  # high tide is TRUE, low tide FALSE
	# traverse readings between ebb and flow, build tide levels at flood and ebb
	moreObs <- TRUE
	while (moreObs) {
		# look for next high tide, build high water.
		if (lookForHighTide) {
			if (waterLevel[k + 1] >= waterLevel[k]) {
			k <- k + 20  # to move past fluctations that might result in false high/low tide
			# add high water level, set lookForTide <- FALSE
				if (k < length(waterLevel) && waterLevel[k + 1] < waterLevel[k]) {
					highWater[i] <- waterLevel[k]
					i <- i + 1
					#print(paste0("  high: ", waterLevel[k]))
					lookForHighTide <- FALSE
				}
			}
		} else {
			if (waterLevel[k + 1] <= waterLevel[k]) {
				k <- k + 20
				# add high water level, set lookForTide <- FALSE
				if (k < length(waterLevel) && waterLevel[k + 1] > waterLevel[k]) {
					lowWater[j] <- waterLevel[k]
					j <- j + 1
					#print(paste0("low: ", waterLevel[k]))
					lookForHighTide <- TRUE
				}
			}
		}
		if (k > length(waterLevel)) {
			moreObs <- FALSE
		}
	}
	if (i > j) {
		highWater <- highWater[1:j - 1]
		lowWater <- lowWater[1:j - 1]
	} else {
		highWater <- highWater[1:i - 1]
		lowWater <- lowWater[1:i - 1]
	}
	return(list(highWater = highWater, lowWater = lowWater))	
}

# get first low tide
# Preconditions: water level is a numeric vector
firstLowTide <- function(waterLevel) {
	k <- 1
	higher <- TRUE
	while (higher) {
		if (waterLevel[k + 1] <= waterLevel[k]) {
			k <- k + 1
		} else {
			higher <- FALSE
		}
	}
	return(k)
}