library("tibble")
library("dplyr")

yeast = read.table("data-raw/yeast.data", header = FALSE,
                 col.names = c("seq", "mcg", "gvh", "alm", "mit", "erl", "pox", "vac", "nuc", "class"),
                 allowEscapes = TRUE)
yeast = as_tibble(yeast)

yeast_classes = yeast %>%
  count(class)
saveRDS(yeast, file = "data/yeast.rds", version = 2)
saveRDS(yeast_classes, file = "data/yeast_classes.rds", version = 2)

