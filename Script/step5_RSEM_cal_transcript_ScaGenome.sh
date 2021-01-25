#!/bin/bash

GenomeDir=/home/teaplant/TeaGenome_v2
RSEM_bin=/home/teaplant/miniconda3/pkgs/rsem-1.3.3-pl526ha52163a_0
DataDir=$HOME/yamashita/RNA-seq/WhiteLeaf/2017_Kogane/Sca_Genome/STAR

export PATH=$RSEM_bin:$PATH

mkdir ../Sca_Genome/RSEM
cd ../Sca_Genome/RSEM

### Step5. Caliculation of transcript levels by RSEM

for DATASET in KGN-1 KGN-2 KGN-3 KGN_B-1 KGN_B-2 KGN_B-3 KGN_S-1 KGN_S-2 KGN_S-3 KGN_BS-1 KGN_BS-2 KGN_BS-3

do

rsem-calculate-expression \
--alignments \
--paired-end \
-p 8 \
--append-names \
--estimate-rspd \
$DataDir/${DATASET}/Aligned.toTranscriptome.out.bam \
$GenomeDir/ref_transcript_star_rsem \
${DATASET}

done



