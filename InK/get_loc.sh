lines_one_time_legacy=11
lines_one_time_new=9

## declare an array variable
declare -a arr=("ar_eval" "bitcount_eval" "cem_eval" "cuckoo_eval" "dijkstra_eval" "fft_eval" "rsa_eval" "sort_eval")

## now loop through the above array
for i in "${arr[@]}"
do
    echo "LOC of NEW $i:"
    lines1=$(cat `find new/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` |tr -d " \t"|grep .|grep -v ^//|grep -v ^#include|wc -l)
    echo $(($lines1 - $lines_one_time_new))
done

## declare an array variable
declare -a arr=("ar_eval" "bitcount_eval" "cem_eval" "cuckoo_eval" "dijkstra_eval" "fft_eval" "rsa_eval" "sort_eval")

## now loop through the above array
for i in "${arr[@]}"
do
    echo "LOC of OLD $i:"
    lines2=$(cat `find legacy-gcc-correct/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` |tr -d " \t"|grep .|grep -v ^//|grep -v ^#include|wc -l)
    echo $(($lines2 - $lines_one_time_legacy))
done
