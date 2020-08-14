# Index yeast genome and ERCC sequences

subread-buildindex \
  -o genome/index \
  genome/ercc-sequences.fa \
  genome/Saccharomyces_cerevisiae.R64-1-1.dna_rm.chromosome.*fa.gz
