install.packages("devtools")
devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
data(college)

##the is the second step
devtools::install_github("jhudsl/matahari")

library(matahari)

## the command to start the documentation  as required
dance_start(value = FALSE, contents = FALSE)

head(college)
table(college$major_category)

fit <- lm(median~major_category, college)
summary(fit)
dance_save("~/Desktop/college_major_analysis.rds")
