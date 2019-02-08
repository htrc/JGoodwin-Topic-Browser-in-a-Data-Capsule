
library(dplyr)

meta <- read.csv("fiction_metadata.csv", stringsAsFactors=FALSE)
meta <- meta %>%
distinct(title,.keep_all=TRUE) %>%
filter (date >= 1920)

write.csv(meta, file="fiction_metadata_1920-22.csv", row.names=FALSE)


