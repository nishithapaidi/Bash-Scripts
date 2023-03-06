#!/bin/bash

mkdir Merged_FASTQ
##merge 10 FASTQ samples of 2 sequencing runs with File name format Sample1.fastq.gz
for i in {1..10}
do
	if [ -f Folder1/Sample$i.fastq.gz ] && [ -f Folder2/Sample$i.fastq.gz ]
	then
		cat Folder1/Sample$i.fastq.gz Folder2/Sample$i.fastq.gz > Merged_FASTQ/Sample$i.merged.fastq.gz
	fi
done
