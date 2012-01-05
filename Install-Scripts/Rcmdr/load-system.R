source("http://bioconductor.org/biocLite.R", echo=TRUE)
biocLite('Rgraphviz')
install.packages(c(
  'sem',
  'abind',
  'rgl',
  'e1071',
  'relimp',
  'multcomp',
  'leaps',
  'aplpack',
  'effects',
  'lmtest',
  'Rcmdr'),
  repos='http://cran.cnr.berkeley.edu')
