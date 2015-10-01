weighted <- function(w,w1,w2,w3,w4){
if(w1+w2+w3+w4==1){
	print("The average rating for Judge:")
	row.names(USJudgeRatings[w,])
	print("is:")
	USJudgeRatings$INTG[w]*w1+USJudgeRatings$PREP[w]*w2+USJudgeRatings$ORAL[w]*w3+USJudgeRatings$PHYS[w]*w4
	print("This average was created using the variables, with the following weights:")
	print("Judicial Integrity")
	print("Preparation for trial")
	print("Sound Oral Rulings")
	print("Physical Ability")
} else {
	print("Weights do not add up")
}

}
#dir("/Users/SebastianMartinez/Dropbox/0. Hertie/3/Collaborative Social Science Data Analysis/2/")

x_1 <- 0.1
x_2 <- 0.4
x_3 <- 0.4
x_4 <- 0.1

weighted(1,x_1,x_2,x_3,x_4)
#system('CMD /C "ECHO The R process has finished running && PAUSE”’, invisible=FALSE, wait=FALSE')


#library(graphics)
#example(plot)                        # Remember to press Enter when prompted.
#example(barplot)                     # Some are better than others!
#example(boxplot)
#example(dotchart)
#example(coplot)
#example(hist)
#example(fourfoldplot)
#example(stars)
#example(image)
#example(contour)
#example(filled.contour)
#example(persp)               
