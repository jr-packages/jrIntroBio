yeast = read.table("data-raw/yeast.data", header = FALSE,
                 col.names = c("seq", "mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class"),
                 allowEscapes = TRUE)
devtools::use_data(yeast)
