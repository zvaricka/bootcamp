# Count reads per feature

featureCounts \
  -a genome/features.saf \
  -F SAF \
  -T 8 \
  -o data/counts.txt \
  bam/*bam
