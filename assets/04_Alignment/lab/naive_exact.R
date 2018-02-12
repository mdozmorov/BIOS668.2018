# https://github.com/BenLangmead/ads1-slides/blob/master/0210_exactmatch__naive.pdf
# https://www.youtube.com/watch?v=ep91JWd6fs0&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA&index=17
# https://nbviewer.jupyter.org/github/BenLangmead/comp-genomics-class/blob/master/notebooks/CG_Naive.ipynb

t = 'haystack needle haystack' # "text" - thing we search in
p = 'needle' # "pattern" - thing we search for

naive <- function(p, t) {
  # Assume text at least as long as pattern
  if (nchar(p) <= nchar(t)) {
    occurrences = c()
    # for each alignment of p to t
    for (i in 1:(nchar(t) - nchar(p) + 1)) {
      # assume we match until proven wrong
      match = TRUE
      # for each position of p
      for (j in 1:nchar(p)) {
        if (substr(t, i + j - 1, i + j - 1) != substr(p, j, j)) {
          match = FALSE
          break()
        }
      }
      if (match) {
        occurrences <- c(occurrences, i)
      }
    }
    return(occurrences)
  }
}

naive(p, t)
naive(p = "CAT", t = "ACATT")

naive('needle', 'needleneedleneedle')
