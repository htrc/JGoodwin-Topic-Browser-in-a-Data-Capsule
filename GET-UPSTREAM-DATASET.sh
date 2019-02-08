
echo "Downloading Ted's full Fiction Metadata set"
wget "http://data.sharc.hathitrust.org/genre/fiction_metadata.csv"

echo "Downloading Ted's unigram frequency count data slice for fiction 1920-22"
wget "http://data.sharc.hathitrust.org/genre/fiction_1920-1922.tar.gz"

if [ ! -d tsv ] ; then
  echo "Creating directory: tsv"
  mkdir tsv
fi

cd tsv \
  && tar xvzf "../fiction_1920-1922.tar.gz" \
  && cd ..


