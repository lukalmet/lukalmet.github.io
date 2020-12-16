tab <- readxl::read_xlsx(path = "data/rapaces.xlsx", sheet = 1)
tab <- as.data.frame(tab)
tab <- tab[-which(tab$france == "Erratique"), ]

x = NULL

for (i in 1:nrow(tab)) {

  tab[i, "code"]
  tab[i, "french"]
  tab[i, "binomial"]

  x <- c(x, paste0(
    "<li><a href=\"./assets/",
    tab[i, "code"],
    ".html\">",
    tab[i, "french"],
    " (<i>",
    tab[i, "binomial"],
    "</i>)</a></li>"
  ))
}

cat(paste0(x, "\n"))
