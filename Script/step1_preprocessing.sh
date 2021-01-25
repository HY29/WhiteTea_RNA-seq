#!/bin/bash

DataDir=$HOME/yamashita/RNA-seq/WhiteLeaf/2017_Kogane/Raw
FastQC_bin=/usr/local/FastQC-0.11.5
Trimmomatic_jar=/usr/local/Trimmomatic-0.39/trimmomatic-0.39.jar
Trimmomatic_adapters=/usr/local/Trimmomatic-0.39/adapters

export PATH=$FastQC_bin:$PATH

### Step1. Preprocessing by FastQC and Trimmomatic (PE)

mkdir ../Trimmomatic
cd ../Trimmomatic


FASTQC_OUTDIR_BEFORE=FastQC_before_preprocess
FASTQC_OUTDIR_AFTER=FastQC_after_preprocess
mkdir $FASTQC_OUTDIR_BEFORE $FASTQC_OUTDIR_AFTER

for DATASET in KGN-1 KGN-2 KGN-3 KGN_B-1 KGN_B-2 KGN_B-3 KGN_S-1 KGN_S-2 KGN_S-3 KGN_BS-1 KGN_BS-2 KGN_BS-3
do
  # FastQC before Trimmomatic
  fastqc --threads 4 --nogroup  \
  --outdir $FASTQC_OUTDIR_BEFORE \
  --format fastq $DataDir/${DATASET}_R*.fastq.gz
  
  # Trimmomatic
  java -Xmx4G -Xms2G -jar $Trimmomatic_jar PE \
    -threads 4 -phred33 -trimlog Trimmomatic_${DATASET}.log  \
    $DataDir/${DATASET}_R1.fastq.gz $DataDir/${DATASET}_R2.fastq.gz \
    ${DATASET}_R1.pe.fastq.gz \
    ${DATASET}_R1.unpe.fastq.gz \
    ${DATASET}_R2.pe.fastq.gz \
    ${DATASET}_R2.unpe.fastq.gz \
    ILLUMINACLIP:$Trimmomatic_adapters/TruSeq3-PE-2.fa:2:30:10 \
    LEADING:15 TRAILING:15 SLIDINGWINDOW:10:15 MINLEN:50
    
  # FastQC after Trimmomatic
  fastqc --threads 4 --nogroup \
  --outdir $FASTQC_OUTDIR_AFTER \
  --format fastq ${DATASET}_R*.pe.fastq.gz
done
