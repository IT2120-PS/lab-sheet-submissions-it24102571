# 1. Import the exercise dataset
student_data <- read.csv("Exercise.csv", header = TRUE)
# View the file in a seperate window
fix(student_data)

# 2. change columns headings
names(student_data) <- c("Age", "Gender", "Accommodation")

# Summary statistics and histogram for Age
summary(student_data$Age)
hist(student_data$Age, main = "Histogram of Age", xlab = "Age")

# 3. Bar chart and frequency table for Gender
gender_freq <- table(student_data$Gender)
gender_freq
barplot(gender_freq, 
        main = "Gender Distribution", 
        xlab = "Gender", 
        ylab = "Frequency", 
        names.arg = c("Male", "Female"))

# 4. Age by Accommodation analysis
boxplot(Age ~ Accommodation, data = student_data, 
        main = "Age Distribution by Accommodation Type",
        xlab = "Accommodation Type", ylab = "Age")