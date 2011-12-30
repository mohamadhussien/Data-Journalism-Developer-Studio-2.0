source("http://bioconductor.org/biocLite.R", echo=TRUE)
biocLite('Rgraphviz')
install.packages(c(
  'statnet',
  'network',
  'numDeriv',
  'sna',
  'networksis',
  'igraphtosonia',
  'relevent',
  'hergm',
  'rgl',
  'SparseM',
  'igraph'),
  repos='http://cran.cnr.berkeley.edu'
)
