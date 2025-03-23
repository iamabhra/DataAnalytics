setwd("/Users/abhijitghosh/Documents/DataScience/DataAnalytics")
ageandheight <-read.csv("height_data_fake.csv")
hgt <- ageandheight$Height_feet
age <- ageandheight$Age_months
plot(age,hgt)
summary(lm(hgt~age))

-- Multiple Linear regression --
setwd("/Users/abhijitghosh/Documents/DataScience/DataAnalytics")
ageandheight <-read.csv("height_data_fake.csv")
hgt <- ageandheight$Height_feet
bio <- ageandheight$Biological_sex
age <- ageandheight$Age_months
birthHeight <- ageandheight$Height_birth_feet

bio[which(bio=="M")] <- 0
bio[which(bio=="F")] <- 1
bio <- as.numeric(bio)

summary(lm(hgt~age+bio+birthHeight))

