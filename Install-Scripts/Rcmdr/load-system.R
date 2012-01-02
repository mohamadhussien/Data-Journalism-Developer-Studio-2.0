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
  'tm',
  'tm.plugin.mail',
  'Rcmdr')
  repos='http://cran.cnr.berkeley.edu')
