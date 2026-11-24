#upload library
library(readr)

#Load data
data <- read.csv("data.csv")

#Run the three checks
dim(data)
names(data)
summary(data)

#Descriptive statistics gender
table(data$gender)
50/70  #meaning 71 percent of candidates are men
20/70  #meaning 29 percent of candidates are women

#Descriptive statistics incumbent
table(data$incumbent)
52/70  #meaning 74 percent of candidates are not incumbents
18/70  #meaning 26 percent of candidates are incumbents

#Contingency table of two qualitative variables 
table(data$gender, data$incumbent)

#Chi squared test
chisq.test(table(data$gender, data$incumbent))

#Summary statistics for 1st variable
mean(data$gender)
sd(data$gender)
min(data$gender)
max(data$gender)

#Summary statistics for 2nd variable
mean(data$incumbent)
sd(data$incumbent)
min(data$incumbent)
max(data$incumbent)




