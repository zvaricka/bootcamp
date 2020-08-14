# Map all samples

for type in wildtype mutant
do
  for rep in {01..06}
  do
    echo "$type-$rep"
    fastq="fastq/$type-$rep.fastq.gz"
    bam="bam/$type-$rep.bam"
    echo subread-align -i genome/index \
      -r "$fastq" -t 0 -o "$bam" \
      |qsub -A ghp3_c_t_lc_default -d . -l pmem=16gb \
      -N "$type-$rep" -j oe -o "log/map-reads-$type-$rep.log"
  done
done
