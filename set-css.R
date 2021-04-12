librarian::shelf(here, yihui/xaringan, gadenbuie/xaringanthemer)

#options(servr.interval = 0.1)
#options(servr.daemon = TRUE)

dir.create(file.path(here::here(), 'css'))

### xaringanthemer

mono_light(
  base_color = "#D8B17E",
  background_color = "#333333",
  header_font_google = google_font("Do Hyeon"),
  text_font_google   = google_font("Gothic A1", "400", "400i"),
  code_font_google   = google_font("Droid Mono"),
  outfile = "css/xaringan-themer.css"
)

title <- list(
  ".title-slide" = list(
    'background-image' = "url('../img/nc-logo.png')",
    'background-color' = "#333333",
    'background-size' = "150px",
    'background-position' = "90% 90%"
  )
)

codeplot <- list(
  ".left-code" =  list(
    color = "#777",
    width = "38%",
    height = "92%",
    float = "left"
  ),
  ".right-plot" = list(
    width = "60%",
    float = "right",
    "padding-left" = "1%"
  )
)

progressbar <- list(
  '.remark-slide-number' = list(
    position = 'inherit'
  ),

  '.remark-slide-number .progress-bar-container' = list(
    position = 'absolute',
    bottom = '0',
    height = '4px',
    display = 'block',
    left = '0',
    right = '0'
  ),

  '.remark-slide-number .progress-bar' = list(
    height = '100%',
    'background-color' = 'red'
  )
)

### Writing

list.files(path=here::here('css')) -> css_list
css_list

write_css <- function(x, do_force=F){
#
  filename = here::here('css', paste0(x, ".css"))
  list.files(path=here::here('css')) -> css_list

  if (paste0(x, ".css") %in% css_list & do_force==F){cat("Already there!")} else {
    write_extra_css(css = eval(parse(text=x)), outfile = filename)
  }
#
}
download_css <- function(url, x){
#
  filename = here::here('css', paste0(x, ".css"))
  list.files(path=here::here('css')) -> css_list

  if (paste0(x, ".css") %in% css_list){cat("Already there!")} else {
    download.file(url, filename)
  }
#
}

write_css("title", T)
write_css('codeplot')
write_css('progressbar')
download_css("https://raw.githubusercontent.com/daneden/animate.css/master/animate.css", 'animate')


