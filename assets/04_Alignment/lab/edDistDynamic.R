# https://github.com/BenLangmead/ads1-slides/blob/master/0440_approx__editdist3.pdf
# https://www.youtube.com/watch?v=Xg6uyW9Bscs&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA&index=35
# https://nbviewer.jupyter.org/github/BenLangmead/comp-genomics-class/blob/master/notebooks/CG_kEditDp.ipynb

edDistDynamic <- function(x, y){
  D = matrix(data = 0, nrow = nchar(x) + 1, ncol = nchar(y) + 1)
  for (i in 1:(nchar(x) + 1)) {
    D[i, 1] <- i - 1
  }
  for (i in 1:(nchar(y) + 1)) {
    D[1, i] <- i - 1
  }
  
  for (i in 2:(nchar(x) + 1)) {
    for (j in 2:(nchar(y) + 1)) {
      distVer <- D[i, j - 1] + 1
      distHor <- D[i - 1, j] + 1
      if (substr(x, i - 1, i - 1) == substr(y, j - 1, j - 1)) {
        distDiag <- D[i - 1, j - 1]
      } else {
        distDiag <- D[i - 1, j - 1] + 1
      }
      D[i, j] <- min(distVer, distHor, distDiag)
    }
  }
  
return(D[nrow(D), ncol(D)])
}

x="shake spea"
y="Shakespear"

edDistDynamic(x, y)
