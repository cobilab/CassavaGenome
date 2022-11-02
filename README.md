
## <b>How compressible is a cassava genome sequence?</b> ##

<br>

<p align="justify">This repository provides information-reproducibility on how compressible a cassava genome sequence is (TME 204 [<a href="https://doi.org/10.1093/gigascience/giac028">article</a>,<a href="https://ftp.cngb.org/pub/gigadb/pub/10.5524/102001_103000/102193/00_Assembly_Fasta/haplotigs/TME204.HiFi_HiC.haplotig1.fa">sequence</a>]) using different data compressors.</p>

### Results: ###

The 762,392,783 cassava DNA symbols have been compressed (lossless) to

<br>
<div align="center">


| Rank     |Bytes       |Bps    |Time (m)|RAM (GB)| Program | Replication | Factor |
|----------|------------|-------|--------|--------|---------|-----------|--------|
| Baseline |190,598,196 | 2.000 | -      | -      | 2 BPS   |-          |![0%](https://progress-bar.dev/0) |

</div>
<br>

<p align="justify">The base line of 2 bits per symbol is used to calculate the (data compression) Factor, which represents the proportion of the sequence that has been fully compressed and is given by 100-((CompressedBytes*8)/(762392783*2)*100). Experiments ran in a Desktop computer running Linux with Intel® Core™ i7-6700 CPU @ 3.40GHz × 8, 31,2 GiB RAM, and disk of 3 TB. The ranking is given by the lowest number of bytes (Kolmogorov complexity approximation).</p>

### Data compression tools ###

<br>
<div align="center">

| Data Compressor | Repository | Description  |
|-----------------|------------|--------------|
| GeCo3           |<a href="https://github.com/cobilab/geco3">code</a>  | <a href="https://doi.org/10.1093/gigascience/giaa119">article</a>|
| GeCo2           |<a href="https://github.com/cobilab/geco2">code</a>  | <a href="https://link.springer.com/chapter/10.1007/978-3-030-23873-5_17">article</a>|
| paq8l           |<a href="http://mattmahoney.net/dc/paq8l.zip">code</a>  | <a href="http://mattmahoney.net/dc/#paq">article</a>|
| nncp v3.1       |<a href="https://bellard.org/nncp/">code</a>  | <a href="https://bellard.org/nncp/nncp_v2.pdf">article</a>|
| NAF             |<a href="https://github.com/KirillKryukov/naf">code</a>  | <a href="https://doi.org/10.1093/bioinformatics/btz144">article</a>|
| lzma 5.2.5      |<a href="https://tukaani.org/xz/">code</a>  | <a href="https://tukaani.org/xz/">article</a>|
| JARVIS          |<a href="https://github.com/cobilab/jarvis">code</a>  | <a href="https://doi.org/10.3390/e21111074">article</a>|
| bzip2 1.0.8     |<a href="https://sourceware.org/bzip2/">code</a>  | <a href="https://sourceware.org/bzip2/">article</a>|
| MFCompress      |<a href="http://sweet.ua.pt/ap/software/mfcompress/MFCompress-linux64-1.01.tgz">code</a>  | <a href="https://doi.org/10.1093/bioinformatics/btt594">article</a>|
| bsc-m03 v0.2.1  |<a href="https://github.com/IlyaGrebnov/bsc-m03">code</a>  | <a href="https://github.com/IlyaGrebnov/bsc-m03">article</a>|
| JARVIS2         |<a href="https://github.com/pratas/HumanGenome/blob/main/bin/JARVIS2-bin-64-Linux.zip">bin</a>  | no article |

</div>
<br>

### Reproducibility: ###

Change directory and give permitions:
<pre>
cd scripts/
chmod +x *.sh
Install_Tools.sh
GetCassava.sh
RunCassava.sh
</pre>

