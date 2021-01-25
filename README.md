# WhiteTea_RNA-seq
Yamashita et al., (2021) Front. Plant Sci. 11:611140. https://doi.org/10.3389/fpls.2020.611140<br>

## Reference-based RNA-seq
Reference genome: Scaffold-level draft genome (Wei et al., 2018. PNAS)．<br>
Genome assembly data (.fas) was downloaded from Tea Plant Information Archive (TPIA) Database (http://tpia.teaplant.org/index.html).<br>

The sequence data in this RNA-seq have been deposited in the DNA Data Bank of Japan (DDBJ) Sequence Read Archive (accession number: DRA010755).

<br>
【Linux】
<br>
Step1. Read preprocessing (Trimmomatic)
<br>
(Step2. Building of genome index for STAR)
<br>
Step3. Reference-based mapping (STAR)
<br>
(Step4. Building of transcript index for RSEM)
<br>
Step5. Calculation of transcript levels (RSEM)
<br>
Step6. Normalization of transcript levels (RSEM)
