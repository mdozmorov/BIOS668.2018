# https://github.com/BenLangmead/ads1-slides/blob/master/0400_approx__intro.pdf
# https://www.youtube.com/watch?v=8Q2IEIY2pDU&list=PL2mpR0RYFQsBiCWVJSvVAO3OJ2t7DzoHA&index=33
# https://nbviewer.jupyter.org/github/BenLangmead/comp-genomics-class/blob/master/notebooks/CG_NaiveApprox.ipynb

naiveHamming <- function(p, t, maxDistance) {
  occurrences = list()
  for (i in 1:(nchar(t) - nchar(p))) { # loop over alignments
    nmm = 0 # Number of mismatches
    match = TRUE
    for (j in 1:nchar(p)) {            # loop over characters
      # compare characters
      if (substr(t, i + j - 1, i + j - 1) != substr(p, j, j)) {
        nmm = nmm + 1                  # mismatch
        if (nmm > maxDistance) {       # exceeded max hamming dist
          break()
        }
      }
    }
    if (nmm <= maxDistance) {
      # approximate match
      occurrences <- c(occurrences, list(c(i, nmm)))
    }
  }
  return(occurrences)
}

naiveHamming('needle', 'needle noodle nargle', maxDistance=2)
