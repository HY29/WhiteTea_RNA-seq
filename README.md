# WhiteTea_RNA-seq
Yamashita et al., (2021) Front. Plant Sci. 11:611140. https://doi.org/10.3389/fpls.2020.611140<br>
に用いたRNA-seq解析フロー

## Reference-based RNA-seq
Reference genome: Wei et al., (2018). PNASで公開されたScaffold-level draft genomeを利用．<br>
Tea Plant Information Archive (TPIA)データベース (http://tpia.teaplant.org/index.html) からゲノムアセンブリデータ (.fas) のダウンロード可能． <br>

以下解析フロー
<br>
【Linux環境】
<br>
Step1. リード前処理 (Trimmomatic)
<br>
(Step2. ゲノムインデックスファイルの作成 for STAR)
<br>
Step3. マッピング (STAR)
<br>
(Step4. トランスクリプトインデックスファイルの作成 for RSEM)
<br>
Step5. 発現量定量 (RSEM)
<br>
Step6. 発現量テーブルの作成 (RSEM)
