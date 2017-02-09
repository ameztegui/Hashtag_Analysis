# load necessary packages
library(knitr)
library(markdown)


knit("Report_AEETMED_ICOPFIRES.Rmd", encoding = "UTF-8") # produces a .md file

markdownToHTML("Report_AEETMED_ICOPFIRES.md", 
               "Report_AEETMED_4blogger.html", fragment.only=TRUE, encoding = "UTF-8") # produces clean .html


