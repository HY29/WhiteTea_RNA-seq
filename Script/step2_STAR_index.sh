#!/bin/bash

GenomeDir=/home/teaplant/TeaGenome_v2
STAR_bin=/home/teaplant/miniconda3/pkgs/star-2.7.3a-0

export PATH=$STAR_bin:$PATH

### Step2. Build index of the reference genome sequence by STAR

STAR --runMode genomeGenerate --genomeDir $GenomeDir --runThreadN 8 \
--sjdbOverhang 149 --genomeFastaFiles $GenomeDir/Teaplant_CSS_Genome.fas \
--sjdbGTFfile $GenomeDir/Teaplant_CSS.gtf


