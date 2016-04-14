##Import data

dataFile <- "~/Documents/Data_Scientist_Courses/Course4_ExploratoryDataAnalysis/Week1/Project/household_power_consumption.txt"
hpc <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

##str(subSetData)

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col= "Red")
dev.off()


