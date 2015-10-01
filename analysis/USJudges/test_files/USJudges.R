x1 <- USJudgeRatings$INTG
x2 <- USJudgeRatings$PREP
x3 <- USJudgeRatings$ORAL
x4 <- USJudgeRatings$PHYS

w1 <- 0.25
w2 <- 0.25
w3 <- 0.25
w4 <- 0.25



weighted_index <- function(r){
  if (0=<r=<43){
    x1[r]*w1+x2[r]*w2+x3[r]*w3+x4[r]*w4
  } else{
    print("Judge does not exist")
}
}
  
weighted_index(100)


source('source/Analysis1.R') #links different R-files together, runs the whole file
#https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/USJudgeRatings.html 