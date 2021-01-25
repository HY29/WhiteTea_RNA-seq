#!/bin/bash

GenomeDir=$HOME/TeaGenome_v2
DataDir=$HOME/yamashita/RNA-seq/WhiteLeaf/2017_Kogane/Trimmomatic

STAR_bin=$HOME/miniconda3/pkgs/star-2.7.3a-0

export PATH=$STAR_bin:$PATH

mkdir ../Sca_Genome/STAR
cd ../Sca_Genome/STAR

### Step3. Mapping to the reference genome sequence by STAR

for DATASET in KGN-1 KGN-2 KGN-3 KGN_B-1 KGN_B-2 KGN_B-3 KGN_S-1 KGN_S-2 KGN_S-3 KGN_BS-1 KGN_BS-2 KGN_BS-3

do

mkdir ${DATASET}

STAR --genomeDir $GenomeDir --runThreadN 8 \
--outFileNamePrefix ${DATASET}/ \
--quantMode TranscriptomeSAM \
--outSAMtype BAM SortedByCoordinate \
--readFilesIn $DataDir/${DATASET}_R1.pe.fastq.gz $DataDir/${DATASET}_R2.pe.fastq.gz \
--readFilesCommand gunzip -c

done


