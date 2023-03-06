#!/bin/bash

#Check the md5sum for each merged FASTQ file
find . -type f -name “*.merged.fastq.gz” -exec sh -c “md5sum {} >{}.md5” \;

#Uncompress fastqfiles
gunzip  Sample1.fastq.gz

#Print first 20 and last 20 lines of Sample.fastq files
head -n20 Sample1.fastq && tail -n20 Sample1.fastq

#Extract the sequneces of all reads of Sample 1
awk '{if(NR%4==2)print $0}' Sample1.fq > Sequence_per_read.txt

#Sort all sequences and save unique sequences into a file
sort Sequences_per_read.txt | uniq -c > S1.uniq.txt
