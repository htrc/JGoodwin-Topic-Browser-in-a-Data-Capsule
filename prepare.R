
library(dplyr)

options(java.parameters="-Xmx8g")
library(dfrtopics)

meta <- read_hathi_metadata("fiction_metadata_1920-22.csv")
counts <- dfrtopics:::read_wordcounts_hathi(list.files("20-22-tsv", full.names=T))

