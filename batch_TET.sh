#!/bin/bash

#Define paths
in_path="/cndd3/dburrows/DATA/te/rna/aligned.subset.no_TSO/"
id=$1
cell=$2
echo 'Running: ' $id-$cell

TEcount --sortByPos --format BAM --mode multi -b $in_path/$id-$cell --GTF /cndd3/dburrows/DATA/te/gtf/gencode.v37.annotation.hg38.gtf --TE /cndd3/dburrows/DATA/te/gtf/rmsk.hg38.gtf --project $id-$cell --outdir /cndd3/dburrows/DATA/te/rna/te_counts.subset.no_TSO/