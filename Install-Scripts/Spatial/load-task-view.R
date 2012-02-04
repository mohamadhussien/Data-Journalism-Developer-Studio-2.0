install.packages(c(
  'BARD',
  'stringr',
  'rgeos',
  'RODBC',
  'SQLiteMap',
  'RPostgreSQL'), 
  repos='http://cran.cnr.berkeley.edu'
)
library(ctv)
install.views('Spatial', repos='http://cran.cnr.berkeley.edu')
