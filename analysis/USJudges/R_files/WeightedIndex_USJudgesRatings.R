#####################################
# USJudgeRatings database (Lawyers' Ratings of State Judges in the US Superior Court)
# additional information on the dataset can be found here: https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/USJudgeRatings.html 
# 
# aim: develop a weighted index of Judge's performance using data on four variables: 
# INTG 	Judicial integrity
# PREP 	Preparation for trial
# ORAL 	Sound oral rulings
# PHYS 	Physical ability
#####################################

### FIRST APPROACH

# loading data from R database
data("USJudgeRatings")

#assigning observations to objects
x1 <- USJudgeRatings$INTG
x2 <- USJudgeRatings$PREP
x3 <- USJudgeRatings$ORAL
x4 <- USJudgeRatings$PHYS

#defining weights for index
w1 <- 0.25
w2 <- 0.25
w3 <- 0.25
w4 <- 0.25

#creating function for weighted Index, r identifies the row/Judge 
weighted_index <- function(r){
  x1[r]*w1+x2[r]*w2+x3[r]*w3+x4[r]*w4
}

#adjusting Index to deal with numbers for r other than integers between 1 and 43
weighted_index <- function(r){
  if(1 <= r && r <= 43 && r == as.integer(r)){
    x1[r]*w1+x2[r]*w2+x3[r]*w3+x4[r]*w4
  } 
  else{
    print("Judge does not exist")
  }
}

#using the Index for Judge in row 1
weighted_index(1)
weighted_index(1:43) #for all Judges

