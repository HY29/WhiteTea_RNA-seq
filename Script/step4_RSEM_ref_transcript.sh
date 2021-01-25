#!/bin/bash

GenomeDir=/home/teaplant/TeaGenome_ChrLev
RSEM_bin=/home/teaplant/miniconda3/pkgs/rsem-1.3.3-pl526ha52163a_0

export PATH=$RSEM_bin:$PATH

### Step4. Build of reference transcriptome data for RSEM

rsem-prepare-reference \
--gtf $GenomeDir/CSS_ChrLev_20200506.gtf \
-p 7 \
$GenomeDir/CSS_ChrLev_20200506_Genome.fas $GenomeDir/ref_transcript_star_rsem



