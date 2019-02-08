

cd 20-22-tsv \
&& perl -CSD -pi -e 's/[\x{FB01}]/fi/g' *.tsv \
&& perl -CSD -pi -e 's/[\x{FB02}]/fl/g' *.tsv \
&& cd ..

