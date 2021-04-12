install.packages('devtools')

if (!requireNamespace("remotes"))
  install.packages("remotes")

devtools::install_github(c('rstudio/rmarkdown',
                           'yihui/xaringan', 
                           'rstudio/fontawesome', 
                           'ropenscilabs/icon'))

renv::init()
