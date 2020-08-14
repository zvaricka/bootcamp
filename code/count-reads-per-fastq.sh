# Script to counts reads in each FASTQ file.
# Saves result to file with extension ".counts"

for fastq in $@
do
  echo "$fastq"
  zcat "$fastq" | grep -c @ERR > "$fastq".counts
done
