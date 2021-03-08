rmarkdown::render("SteakArticleParams.Rmd", params = list(region = "Pacific"))

render_report<- function(regionvar)
{
  template <-"SteakArticleParams.Rmd"
  outfile <- sprintf("SteakArticle_%s.html", regionvar)
  parameters <- list(region = regionvar)
  rmarkdown::render(template, output_file = outfile, params = parameters)
  invisible(TRUE)
}

library(purrr)

params_list <- list(list("Mountain", "Pacific", "New England", "East North Central"))

purrr::pmap(params_list, render_report)
