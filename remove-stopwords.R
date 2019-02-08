

stoplist_file <- file.path(path.package("dfrtopics"), "stoplist", "stoplist.txt")
stoplist <- readLines(stoplist_file)
counts <- counts %>% wordcounts_remove_stopwords(stoplist)

counts <- counts %>% wordcounts_remove_rare(20000)

