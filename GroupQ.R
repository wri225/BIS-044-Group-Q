broadwaydf <- "broadway.csv"
broadway <- read.csv(broadwaydf)
broadway <- broadway[broadway$Date.Year >= "1990" & broadway$Date.Year <= "1999",]
broadway.mean <- aggregate(broadway,
                           by = list(broadway$Date.Year),
                           FUN = mean)
names(broadway.mean)[names(broadway.mean) == 'Group.1'] <- 'Year'
names(broadway.mean)[names(broadway.mean) == 'Statistics.Attendance'] <- 'Average Attendance'
broadway.mean[,c("Year", "Average Attendance")]
barplot(broadway.mean$`Average Attendance`, main="Average Attendance", xlab="Year")

