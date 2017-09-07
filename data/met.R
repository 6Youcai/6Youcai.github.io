USJudgeRatings <- USJudgeRatings[, 1:3]

beeswarm(USJudgeRatings, pch = c(17,16,15),
         spacing = 1.5,
         col = c("#377EB8", "#FFD92F", "#999999"))

beanplot(USJudgeRatings, what = c(0,0,1,0), col = 2, add = TRUE)

bxplot(USJudgeRatings, probs = c(0.25, 0.75), 
       add = TRUE, 
       Width = 0.75)

fn <- function(x)
  quantile(x, probs = c(0.25, 0.75))
seg <- as.data.frame(apply(USJudgeRatings, 2, fn))
for(i in 1:length(seg)) {
  low <- seg[1,i]
  up <- seg[2, i]
  segments(i, low, i , up)
}
