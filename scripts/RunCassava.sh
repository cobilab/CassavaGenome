#!/bin/bash
#
# ==============================================================================
#
function RUN_GECO3 {
  #
  IN_FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $IN_FILE \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  BYTES=`ls -la $IN_FILE.co | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $IN_FILE.co \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $IN_FILE.de $IN_FILE > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  }
#
# ==============================================================================
#
function RUN_GECO2 {
  #
  IN_FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $IN_FILE \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  BYTES=`ls -la $IN_FILE.co | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $IN_FILE.co \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $IN_FILE.de $IN_FILE > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  }
#
# ==============================================================================
#
function RUN_JARVIS2_BIN {
  #
  IN_FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $IN_FILE \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  BYTES=`ls -la $IN_FILE.jc | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $IN_FILE.jc \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $IN_FILE.jc.jd $IN_FILE > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  }
#
# ==============================================================================
#
function RUN_JARVIS1 {
  #
  IN_FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $IN_FILE \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  BYTES=`ls -la $IN_FILE.jc | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $IN_FILE.jc \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $IN_FILE.jc.jd $IN_FILE > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  }
#
# ==============================================================================
#
function RUN_JARVIS2_SH {
  #
  IN_FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  C_PROPERTIES="$6"
  #
  #/bin/time -f "TIME\t%e\tMEM\t%M" ./JARVIS2.sh --level " $C_COMMAND " --block 405MB --threads 8 --dna --input $IN_FILE \
  /bin/time -f "TIME\t%e\tMEM\t%M" ./JARVIS2.sh --level " $C_COMMAND " "$C_PROPERTIES" --input $IN_FILE \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  BYTES=`ls -la $IN_FILE.tar | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" ./JARVIS2.sh $D_COMMAND $IN_FILE.tar \
  |& grep "TIME" \
  |& tr '.' ',' \
  |& awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $IN_FILE.tar.out $IN_FILE > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  }
#
# ==============================================================================
#
function RUN_NAF {
  #
  mkdir -p tmp/
  TMP="tmp-x.fa";
  rm -f $TMP.naf $TMP.unnaf
  echo ">x" > $TMP;
  cat $1 >> $TMP;
  printf "\n" >> $TMP;
  #
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $TMP 2> naf_tmp_report.txt;
  cat naf_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  #
  BYTES=`ls -la $TMP.naf | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND -o $TMP.unnaf $TMP.naf 2> naf_tmp_report.txt 
  cat naf_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $TMP.unnaf $TMP > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  rm -f $TMP $TMP.unnaf
  #
  }
#
# ==============================================================================
#
function RUN_LZMA {
  #
  FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  cp $FILE $FILE.orig
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $FILE.orig 2> c_tmp_report.txt;
  cat c_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  #
  BYTES=`ls -la $FILE.orig.lzma | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $FILE.orig.lzma 2> d_tmp_report.txt
  cat d_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $FILE $FILE.orig > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  rm -f $FILE.orig $FILE.orig.lzma c_tmp_report.txt d_tmp_report.txt c_time_mem.txt d_time_mem.txt
  #
  }
#
# ==============================================================================
#
function RUN_BZIP2 {
  #
  FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  cp $FILE $FILE.orig
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND $FILE.orig 2> c_tmp_report.txt;
  cat c_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  #
  BYTES=`ls -la $FILE.orig.bz2 | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND $FILE.orig.bz2 2> d_tmp_report.txt
  cat d_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $FILE $FILE.orig > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  rm -f $FILE.orig $FILE.orig.bz2 c_tmp_report.txt d_tmp_report.txt c_time_mem.txt d_time_mem.txt
  #
  }
#
# ==============================================================================
#
function RUN_BSC {
  #
  FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  cp $FILE $FILE.orig
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" ./bsc-m03 e $FILE.orig $FILE.bsc $C_COMMAND 1> c_stdout.txt 2> c_tmp_report.txt;
  cat c_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  #
  BYTES=`ls -la $FILE.bsc | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND d $FILE.bsc $FILE.out 1> d_stdout.txt 2> d_tmp_report.txt
  cat d_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $FILE.out $FILE.orig > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  rm -f $FILE.orig $FILE.bsc $FILE.out c_tmp_report.txt d_tmp_report.txt c_time_mem.txt d_time_mem.txt c_stdout.txt d_stdout.txt
  #
  }
#
# ==============================================================================
#
function RUN_MFC {
  #
  FILE="$1";
  C_COMMAND="$2";
  D_COMMAND="$3";
  NAME="$4";
  #
  echo ">x" > $FILE.orig;
  cat $FILE >> $FILE.orig;
  printf "\n" >> $FILE.orig;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $C_COMMAND -o $FILE.mfc $FILE.orig 1> c_stdout.txt 2> c_tmp_report.txt;
  cat c_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > c_time_mem.txt;
  #
  BYTES=`ls -la $FILE.mfc | awk '{ print $5 }'`;
  #
  /bin/time -f "TIME\t%e\tMEM\t%M" $D_COMMAND -o $FILE.d $FILE.mfc 1> d_stdout.txt 2> d_tmp_report.txt
  cat d_tmp_report.txt | grep "TIME" | tr '.' ',' | awk '{ printf $2/60"\t"$4/1024/1024"\n" }' > d_time_mem.txt;
  #
  cmp $FILE.orig $FILE.d > cmp.txt;
  #
  C_TIME=`cat c_time_mem.txt | awk '{ print $1}'`;
  C_MEME=`cat c_time_mem.txt | awk '{ print $2}'`;
  D_TIME=`cat d_time_mem.txt | awk '{ print $1}'`;
  D_MEME=`cat d_time_mem.txt | awk '{ print $2}'`;
  VERIFY="0";
  CMP_SIZE=`ls -la cmp.txt | awk '{ print $5}'`
  if [[ "$CMP_SIZE" != "0" ]]; then CMP_SIZE="1"; fi
  #
  printf "$NAME\t$BYTES\t$C_TIME\t$C_MEME\t$D_TIME\t$D_MEME\t$CMP_SIZE\t$5\n";
  #
  rm -f $FILE.orig $FILE.mfc $FILE.d c_tmp_report.txt d_tmp_report.txt c_time_mem.txt d_time_mem.txt c_stdout.txt d_stdout.txt
  #
  }
#

# ==============================================================================
#
FILE="CASSAVA2.seq";
#
# ==============================================================================
#
printf "PROGRAM\tC_BYTES\tC_TIME (m)\tC_MEM (GB)\tD_TIME (m)\tD_MEM (GB)\tDIFF\tRUN\n";
#
# ------------------------------------------------------------------------------
#
RUN_GECO2 "$FILE" "GeCo2 -v -tm 13:1:0:0:0.7/0:0:0" "GeDe2 -v " "GeCo2" "1"
RUN_GECO2 "$FILE" "GeCo2 -v -tm 3:1:0:0:0.7/0:0:0 -tm 13:500:1:20:0.9/1:20:0.9" "GeDe2 -v " "GeCo2" "2"
RUN_GECO2 "$FILE" "GeCo2 -v -tm 3:1:0:0:0.7/0:0:0 -tm 14:500:1:20:0.9/1:20:0.9" "GeDe2 -v " "GeCo2" "3"
RUN_GECO2 "$FILE" "GeCo2 -v -tm 3:1:0:0:0.7/0:0:0 -tm 17:1000:1:10:0.9/3:20:0.9" "GeDe2 -v " "GeCo2" "4"
RUN_GECO2 "$FILE" "GeCo2 -v -tm 12:1:0:0:0.7/0:0:0 -tm 17:1000:1:20:0.9/3:20:0.9" "GeDe2 -v " "GeCo2" "5"
#
RUN_GECO3 "$FILE" "GeCo3 -v -tm 13:1:0:0:0.7/0:0:0" "GeDe3 -v " "GeCo3" "6"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.005 -hs 160 -tm 1:1:1:0:0.6/0:0:0 -tm 1:1:0:0:0.6/0:0:0 -tm 2:1:2:0:0.90/0:0:0 -tm 2:1:1:0:0.8/0:0:0 -tm 3:1:0:0:0.8/0:0:0 -tm 4:1:0:0:0.8/0:0:0 -tm 5:1:0:0:0.8/0:0:0 -tm 6:1:0:0:0.8/0:0:0 -tm 7:1:1:0:0.7/0:0:0 -tm 8:1:0:0:0.85/0:0:0 -tm 9:1:1:0:0.88/0:0:0 -tm 11:10:2:0:0.9/0:0:0 -tm 11:10:0:0:0.88/0:0:0 -tm 12:20:1:0:0.88/0:0:0 -tm 14:50:1:1:0.89/1:10:0.89 -tm 17:2000:1:10:0.88/2:50:0.88 -tm 20:1200:1:160:0.88/3:15:0.88 " "GeDe3 -v " "GeCo3" "7"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.005 -hs 90 -tm 1:1:0:0:0.6/0:0:0 -tm 2:1:2:0:0.90/0:0:0 -tm 2:1:1:0:0.8/0:0:0 -tm 3:1:0:0:0.8/0:0:0 -tm 5:1:0:0:0.8/0:0:0 -tm 7:1:1:0:0.7/0:0:0 -tm 9:1:1:0:0.88/0:0:0 -tm 12:20:0:0:0.88/0:0:0 -tm 14:50:1:1:0.89/0:10:0.89 -tm 17:2000:1:10:0.88/2:50:0.88 -tm 20:1200:1:120:0.88/3:10:0.88 " "GeDe3 -v " "GeCo3" "8"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.005 -hs 90 -tm 1:1:0:0:0.6/0:0:0 -tm 3:1:2:0:0.90/0:0:0 -tm 2:1:1:0:0.8/0:0:0 -tm 3:1:0:0:0.8/0:0:0 -tm 6:1:0:0:0.7/0:0:0 -tm 11:20:0:0:0.88/0:0:0 -tm 13:50:1:1:0.89/0:10:0.89 -tm 17:2000:1:10:0.88/2:50:0.88 -tm 20:1000:1:70:0.88/3:10:0.88 " "GeDe3 -v " "GeCo3" "9"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.005 -hs 90 -tm 1:1:0:0:0.6/0:0:0 -tm 2:1:2:0:0.90/0:0:0 -tm 2:1:1:0:0.8/0:0:0 -tm 3:1:0:0:0.8/0:0:0 -tm 5:1:0:0:0.8/0:0:0 -tm 7:1:1:0:0.7/0:0:0 -tm 9:1:1:0:0.88/0:0:0 -tm 11:20:0:0:0.88/0:0:0 -tm 13:50:1:1:0.89/0:10:0.89 -tm 17:2000:1:10:0.88/2:50:0.88 -tm 20:1200:1:40:0.88/3:10:0.88 " "GeDe3 -v " "GeCo3" "10"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.03 -hs 72 -tm 1:1:0:0:0.6/0:0:0 -tm 3:1:0:1:0.70/0:0:0 -tm 8:1:0:1:0.85/0:0:0 -tm 13:20:0:1:0.9/0:1:0.9 -tm 20:1500:1:50:0.9/4:10:0.9 " "GeDe3 -v " "GeCo3" "11"
RUN_GECO3 "$FILE" "GeCo3 -v -hs 24 -lr 0.02 -tm 12:1:0:0:0.9/0:0:0 -tm 19:1200:1:10:0.8/3:20:0.9 " "GeDe3 -v " "GeCo3" "12"
RUN_GECO3 "$FILE" "GeCo3 -v -lr 0.02 -tm 3:1:0:0:0.7/0:0:0 -tm 18:1200:1:10:0.9/3:10:0.9 " "GeDe3 -v " "GeCo3" "13"
RUN_GECO3 "$FILE" "GeCo3 -v -tm 3:1:0:0:0.7/0:0:0 -tm 19:1000:0:20:0.9/0:20:0.9 " "GeDe3 -v " "GeCo3" "14"
#
RUN_JARVIS1 "$FILE" "JARVIS -v -rm 2000:12:0.1:0.9:6:0.10:1 -cm 4:1:1:0.7/0:0:0:0 -z 6 " "JARVIS -d " "JARVIS1" "15"
RUN_JARVIS2_BIN "$FILE" "./JARVIS2 -v -rm 50:11:1:0.9:7:0.4:1:0.2:200000 -cm 1:1:0:0.7/0:0:0:0 " "./JARVIS2 -d " "JARVIS2-bin" "16"
RUN_JARVIS2_BIN "$FILE" "./JARVIS2 -v -lr 0.005 -hs 48 -rm 2000:14:1:0.9:7:0.4:1:0.2:250000 -cm 1:1:0:0.7/0:0:0:0 -cm 7:1:0:0.7/0:0:0:0 -cm 12:1:1:0.85/0:0:0:0 " "./JARVIS2 -d " "JARVIS2-bin" "17"
RUN_JARVIS2_BIN "$FILE" "./JARVIS2 -v -lr 0.005 -hs 92 -rm 2000:15:1:0.9:7:0.3:1:0.2:250000 -cm 1:1:0:0.7/0:0:0:0 -cm 4:1:0:0.85/0:0:0:0 -cm 7:1:0:0.7/0:0:0:0 -cm 11:1:1:0.85/0:0:0:0 -cm 14:1:1:0.85/1:1:1:0.9 " "./JARVIS2 -d " "JARVIS2-bin" "18"
RUN_JARVIS2_BIN "$FILE" "./JARVIS2 -v -lr 0.01 -hs 42 -rm 1000:13:1:0.9:7:0.4:1:0.2:220000 -cm 1:1:0:0.7/0:0:0:0 -cm 7:1:0:0.7/0:0:0:0 -cm 12:1:1:0.85/0:0:0:0 " "./JARVIS2 -d " "JARVIS2-bin" "19"
#
RUN_JARVIS2_SH "$FILE" " -lr 0.01 -hs 42 -rm 200:11:1:0.9:7:0.3:1:0.2:220000 -cm 12:1:1:0.85/0:0:0:0 " " --decompress --threads 3 --dna --input " "JARVIS2-sh" "20" " --block 270MB --threads 3 --dna "
RUN_JARVIS2_SH "$FILE" " -lr 0.01 -hs 42 -rm 1000:12:0.1:0.9:7:0.4:1:0.2:220000 -cm 1:1:0:0.7/0:0:0:0 -cm 7:10:1:0.7/0:0:0:0 -cm 12:1:1:0.85/0:0:0:0 " " --decompress --threads 3 --dna --input " "JARVIS2-sh" "21" " --block 270MB --threads 3 --dna "
RUN_JARVIS2_SH "$FILE" " -lr 0.01 -hs 42 -rm 500:12:0.1:0.9:7:0.4:1:0.2:220000 -cm 1:1:0:0.7/0:0:0:0 -cm 7:1:0:0.7/0:0:0:0 -cm 12:1:1:0.85/0:0:0:0 " " --decompress --threads 6 --dna --input " "JARVIS2-sh" "22" " --block 150MB --threads 6 --dna "
RUN_JARVIS2_SH "$FILE" " -lr 0.01 -hs 42 -rm 200:11:1:0.9:7:0.3:1:0.2:220000 -cm 12:1:1:0.85/0:0:0:0 " " --decompress --threads 8 --dna --input " "JARVIS2-sh" "23" " --block 100MB --threads 8 --dna "
#
RUN_NAF "$FILE" "ennaf --temp-dir tmp/ --dna --level 22 " "unnaf " "NAF-22" "24"
RUN_LZMA "$FILE" "lzma -9 -f -k " "lzma -f -k -d " "LZMA-9" "25"
RUN_BZIP2 "$FILE" "bzip2 -9 -f -k " "bzip2 -f -k -d " "BZIP2-9" "26"
RUN_BSC "$FILE" " -b800000000 " "./bsc-m03 " "BSC-m03" "27"
RUN_BSC "$FILE" " -b400000000 " "./bsc-m03 " "BSC-m03" "28"
RUN_BSC "$FILE" " -b4096000 " "./bsc-m03 " "BSC-m03" "29"
RUN_MFC "$FILE" "./MFCompressC -v -1 -p 1 -t 1 " "./MFCompressD " "MFC-1" "30"
RUN_MFC "$FILE" "./MFCompressC -v -2 -p 1 -t 1 " "./MFCompressD " "MFC-2" "31"
RUN_MFC "$FILE" "./MFCompressC -v -3 -p 1 -t 1 " "./MFCompressD " "MFC-3" "32"
#
# ==============================================================================
#
