#!/bin/bash
#
CHECK_INPUT () {
  FILE=$1
  if [ -f "$FILE" ];
    then
    echo "Input filename: $FILE"
    else
    echo -e "\e[31mERROR: input file not found ($FILE)!\e[0m";
    exit;
    fi
  }
#
CHECK_INPUT "data.csv";
cat data.csv | awk '{ print $1} ' | sort -V | uniq > names.txt
SIZE=`wc -l names.txt | awk '{ print $1;}'`;
CHECK_INPUT "names.txt";
#
idx=1;
plotnames="";
mapfile -t INT_DATA < names.txt;
for dint in "${INT_DATA[@]}"
  do
  #
  grep $dint data.csv > data-$idx.csv
  tmp="'data-$idx.csv' u 3:4 w points ls $idx title '$dint', ";
  plotnames="$plotnames $tmp";
  ((++idx));
  #
  done
#
echo "$plotnames";


#
gnuplot << EOF
    reset
    set terminal pdfcairo enhanced color font 'Verdade,12'
    set output "Benchmark2.pdf"
    set style line 101 lc rgb '#000000' lt 1 lw 2 
    set border 3 front ls 101
    set tics nomirror out scale 0.75
    set key fixed right top vertical Right noreverse noenhanced autotitle nobox
    set style histogram clustered gap 1 title textcolor lt -1
    set xtics border in scale 0,0 nomirror #rotate by -60  autojustify
    set yrange [0:500]
    set xrange [:1.75]
    set xtics auto
    set ytics auto
    set key top right
    #set style line 4 lc rgb '#CC0000' lt 2 dashtype '---' lw 4 pt 5 ps 0.4 # --- red
    set style line 1 lc rgb '#990099'  pt 1 ps 0.6  # circle
    set style line 2 lc rgb '#004C99'  pt 2 ps 0.6  # circle
    set style line 3 lc rgb '#CCCC00'  pt 3 ps 0.6  # circle
    set style line 4 lc rgb 'red'  pt 7 ps 0.6  # circle
    set style line 5 lc rgb '#009900'  pt 5 ps 0.6  # circle
    set style line 6 lc rgb '#990000'  pt 6 ps 0.6  # circle
    set style line 7 lc rgb '#009999'  pt 4 ps 0.6  # circle
    set style line 8 lc rgb '#99004C'  pt 8 ps 0.6  # circle
    set style line 9 lc rgb '#CC6600'  pt 9 ps 0.6  # circle
    set style line 10 lc rgb '#322152' pt 10 ps 0.6  # circle    
    set style line 11 lc rgb '#425152' pt 11 ps 0.6  # circle    
    set grid
    set ylabel "Real time (minutes)"
    set xlabel "Average number of bits per symbol"
    plot $plotnames
    #plot "data.csv" u 3:4:1:(column(6)) w points ps variable lc variable
EOF

