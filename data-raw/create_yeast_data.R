yeast = read.table("data-raw/yeast.data", header = FALSE,
                 col.names = c("seq", "mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class"),
                 allowEscapes = TRUE)
yeast_classes = yeast$class
devtools::use_data(yeast)
devtools::use_data(yeast_classes)
