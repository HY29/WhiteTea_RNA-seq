#!/bin/bash

ToolDir=/home/teaplant/yamashita/tool/script_rnakato
RSEM_bin=/home/teaplant/miniconda3/pkgs/rsem-1.3.3-pl526ha52163a_0

export PATH=$RSEM_bin:$PATH
cd ../Sca_Genome/RSEM

### Step6. Normalization of transcript levels by RSEM
#count or TPM or FPKM
$ToolDir/rsem-generate-data-matrix-modified \
count \
KGN-1.genes.results \
KGN-2.genes.results \
KGN-3.genes.results \
KGN_B-1.genes.results \
KGN_B-2.genes.results \
KGN_B-3.genes.results \
KGN_S-1.genes.results \
KGN_S-2.genes.results \
KGN_S-3.genes.results \
KGN_BS-1.genes.results \
KGN_BS-2.genes.results \
KGN_BS-3.genes.results \
> GeneExpressionMatrix.count_KGN.csv

