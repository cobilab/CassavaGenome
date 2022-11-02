#!/bin/bash
#
wget https://ftp.cngb.org/pub/gigadb/pub/10.5524/102001_103000/102193/00_Assembly_Fasta/haplotigs/TME204.HiFi_HiC.haplotig1.fa
#
cat TME204.HiFi_HiC.haplotig1.fa | grep -v ">" | tr -d -c "ACGT" > CASSAVA.seq
#
