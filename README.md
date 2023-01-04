
## <b>How compressible is a cassava genome sequence?</b> ##

<br>

<p align="justify">This repository provides information-reproducibility on how compressible a cassava genome sequence is (TME 204 [<a href="https://doi.org/10.1093/gigascience/giac028">article</a>,<a href="https://ftp.cngb.org/pub/gigadb/pub/10.5524/102001_103000/102193/00_Assembly_Fasta/haplotigs/TME204.HiFi_HiC.haplotig1.fa">sequence</a>]) using different data compressors.</p>

### Results: ###

The 762,392,783 cassava DNA symbols have been compressed (lossless) to

<br>
<div align="center">
| Rank     |Bytes       |Bps    |Time (m)|RAM (GB)| Program | Replication | Factor |
|----------|------------|-------|--------|--------|---------|-----------|--------|
|1 | 69,078,516 | 0.7249 | 193,0 | 11,3 | JARVIS2 | 18 | ![64%](https://progress-bar.dev/64)|
|2 | 70,063,509 | 0.7352 | 163,2 | 5,9 | JARVIS2 | 17 | ![63%](https://progress-bar.dev/63)|
|3 | 71,522,417 | 0.7505 | 114,4 | 2,9 | JARVIS2 | 19 | ![62%](https://progress-bar.dev/62)|
|4 | 76,069,141 | 0.7982 | 162,4 | 24,8 | GeCo3 | 7 | ![60%](https://progress-bar.dev/60)|
|5 | 76,274,590 | 0.8004 | 89,9 | 19,7 | GeCo3 | 8 | ![60%](https://progress-bar.dev/60)|
|6 | 76,349,440 | 0.8012 | 45,3 | 1,2 | JARVIS2 | 21 | ![60%](https://progress-bar.dev/60)|
|7 | 76,361,940 | 0.8013 | 89,3 | 8,1 | GeCo3 | 10 | ![60%](https://progress-bar.dev/60)|
|8 | 76,381,495 | 0.8015 | 80,6 | 11,6 | GeCo3 | 9 | ![60%](https://progress-bar.dev/60)|
|9 | 77,864,398 | 0.8171 | 47,6 | 7,3 | GeCo3 | 11 | ![59%](https://progress-bar.dev/59)|
|10 | 77,946,880 | 0.8179 | 28 | 4 | JARVIS2 | 22 | ![59%](https://progress-bar.dev/59)|
|11 | 79,370,240 | 0.8329 | 18 | 2 | JARVIS2 | 20 | ![58%](https://progress-bar.dev/58)|
|12 | 80,345,790 | 0.8431 | 33 | 4 | JARVIS2 | 16 | ![58%](https://progress-bar.dev/58)|
|13 | 81,267,289 | 0.8528 | 22 | 2 | GeCo3 | 12 | ![57%](https://progress-bar.dev/57)|
|14 | 81,387,520 | 0.8540 | 12 | 5 | JARVIS2 | 23 | ![57%](https://progress-bar.dev/57)|
|15 | 82,134,490 | 0.8619 | 25 | 2 | GeCo3 | 13 | ![57%](https://progress-bar.dev/57)|
|16 | 86,065,540 | 0.9031 | 130 | 6 | JARVIS1 | 15 | ![55%](https://progress-bar.dev/55)|
|17 | 88,607,613 | 0.9298 | 9 | 2 | GeCo2 | 4 | ![54%](https://progress-bar.dev/54)|
|18 | 89,470,912 | 0.9388 | 11 | 3 | GeCo2 | 5 | ![53%](https://progress-bar.dev/53)|
|19 | 91,378,688 | 0.9589 | 20 | 3 | GeCo3 | 14 | ![52%](https://progress-bar.dev/52)|
|20 | 93,208,245 | 0.9781 | 4 | 2 | MFC-3 | 32 | ![51%](https://progress-bar.dev/51)|
|21 | 93,681,287 | 0.9830 | 13 | 1 | LZMA-9 | 25 | ![51%](https://progress-bar.dev/51)|
|22 | 93,992,979 | 0.9863 | 8 | 3 | NAF-22 | 24 | ![51%](https://progress-bar.dev/51)|
|23 | 96,085,325 | 1.0083 | 8 | 9 | BSC-m03 | 27 | ![50%](https://progress-bar.dev/50)|
|24 | 97,255,512 | 1.0205 | 4 | 2 | GeCo2 | 3 | ![49%](https://progress-bar.dev/49)|
|25 | 98,576,956 | 1.0344 | 2 | 1 | MFC-2 | 31 | ![48%](https://progress-bar.dev/48)|
|26 | 99,411,034 | 1.0431 | 2 | 1 | MFC-1 | 30 | ![48%](https://progress-bar.dev/48)|
|27 | 99,943,268 | 1.0487 | 8 | 5 | BSC-m03 | 28 | ![48%](https://progress-bar.dev/48)|
|28 | 100,623,483 | 1.0559 | 15 | 1 | GeCo3 | 6 | ![47%](https://progress-bar.dev/47)|
|29 | 104,672,000 | 1.0984 | 4 | 1 | GeCo2 | 2 | ![45%](https://progress-bar.dev/45)|
|30 | 111,431,846 | 1.1693 | 2 | 1 | GeCo2 | 1 | ![42%](https://progress-bar.dev/42)|
|31 | 133,792,919 | 1.4039 | 8 | 0 | BSC-m03 | 29 | ![30%](https://progress-bar.dev/30) |
|32 | 169,616,349 | 1.7798 | 1 | 0 | BZIP2-9 | 26 | ![11%](https://progress-bar.dev/11) |
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
| JARVIS2         |<a href="https://github.com/cobioders/jarvis2">code</a>  | under review |

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

