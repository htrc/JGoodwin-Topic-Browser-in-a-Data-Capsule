
Scripts to help follow the blog article:

  https://jgoodwin.net/blog/creating-hathitrust-topic-browser/

This article was written in 2015.  For a version of the blog article
with personal notes from David Bainbridge detailing what was
needed to get things to run in Dec 2018. A local copy of the
edited version of the web page is provided alongside this
README.txt file:

  Creating a Topic Browser of HathiTrust Data -- with-edits.html
  
These personal notes batch up some of the code/statements to run as scripts.
A cribbed version of what to do is as follows:

Quick-Start
===========

If you do not have R, then install it with:

  sudo apt-get install r-base

Similarly for curl, ssh, libxml2:
  sudo apt-get install libcurl4-openssl-dev libssl-dev libxml2-dev

Make sure it is capable of compiling up Java with JNI.

Check the value of JAVA_HOME in SETUP.bash and edit according, then
run:

  source ./SETUP.bash

Now you are ready to get and process the data.

Get the data and untar it:

  ./GET-UPSTREAM-DATASET.sh

Start R:
  R

Install the various R packages used:
  source("install-dplyr-package.R")

(You will be prompted to select a mirror site to use, and if prompted to
 use a newer version of a package, press 'cancel' to say no)
 
  source("install-goodwin-dfrtopics.R")

  source("filter.R")

At the shell-prompt:

  mkdir 20-22-tsv
  ./copy.pl
  ./fix-ligatures.sh

Back within R:

  source("prepare.R")
  source("remove-stopwords.R")

  docs <- wordcounts_texts(counts)
  ilist <- make_instances(docs)

Now train the model:

  m <- train_model(ilist, n_topics=100, n_iters=200,metadata=meta)

  export_ht_browser_data(m, "data")

Back in the shell:

  ./GET-DFR-BROWSER.sh

  cd dfr-browser
  cp -r ../data .  

  bin/server

Now open http://localhost:8888 in your web browser

====

Now Obsolete: Text below originally planned as more detailed
account of what to do, but all that putting in more details here does,
in reality, is replicate the Blog article.  The spliced notes using
Seamless Web Editing is more effective to provide this level
of detail along with erratas + notes

Run:
  ./GET-UPSTREAM-DATASET.sh

to get Ted's Fiction metadata set (single CSV file) and the related TSV 
Unigram frequency count files.

Erata:
 Needed to fix name of script to read in copy.pl


