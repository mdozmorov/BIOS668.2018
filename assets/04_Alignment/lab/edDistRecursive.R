# https://github.com/BenLangmead/ads1-slides/blob/master/0420_approx__editdist.pdf
# https://www.youtube.com/watch?v=8Q2IEIY2pDU&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA&index=33
# https://nbviewer.jupyter.org/github/BenLangmead/comp-genomics-class/blob/master/notebooks/CG_DP_EditDist.ipynb

edDistRecursive <- function(x, y){
  if (nchar(x) == 0) {
    return(nchar(y))
  }
  if (nchar(y) == 0) {
    return(nchar(x))
  }
  delt <- ifelse(substr(x, nchar(x) - 1, nchar(x) - 1) != substr(y, nchar(y) - 1, nchar(y) - 1), 1, 0)
  delt
  return(min(edDistRecursive(substr(x, 1, nchar(x) - 1), substr(y, 1, nchar(y) - 1)) + delt,
             edDistRecursive(substr(x, 1, nchar(x) - 1), y) + 1,
             edDistRecursive(x, substr(y, 1, nchar(y) - 1)) + 1))
}

x <- "ATCG"
y <- "AGGG"
edDistRecursive(x, y)

x <- "shake spea"
y <- "Shakespear"
edDistRecursive(x, y)

x <- "shakespea"
y <- "snakespea"
edDistRecursive(x, y)
