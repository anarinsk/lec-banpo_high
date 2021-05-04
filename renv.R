install.packages('devtools')

if (!requireNamespace("remotes"))
  install.packages("remotes")

devtools::install_github(c('rstudio/rmarkdown',
                           'yihui/xaringan', 
                           'yihui/showtext',
                           'rstudio/fontawesome',
                           'gadenbuie/xaringanthemer'))

renv::init()

