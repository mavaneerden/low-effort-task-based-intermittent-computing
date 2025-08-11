#!/bin/bash

# Source: https://stackoverflow.com/a/17841619
function join_by {
  local d=${1-} f=${2-}
  if shift 2; then
    printf %s "$f" "${@/#/$d}"
  fi
}

lines_one_time_legacy=11 # app_init and app_reboot
lines_one_time_new=9 # main function

benchmarks=("ar_eval" "bitcount_eval" "cem_eval" "cuckoo_eval" "dijkstra_eval" "fft_eval" "rsa_eval" "sort_eval")

# LOC of NEW
echo "---NEW LOC---"
for i in "${benchmarks[@]}"
do
    echo -ne "$i:\t\t"
    lines1=$(cat `find new/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` |tr -d " \t"|grep .|grep -v ^//|grep -v ^#include|wc -l)
    echo $(($lines1 - $lines_one_time_new))
done

# LOC of OLD
echo "---OLD LOC---"
for i in "${benchmarks[@]}"
do
    echo -ne "$i:\t\t"
    lines2=$(cat `find legacy-gcc-correct/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` |tr -d " \t"|grep .|grep -v ^//|grep -v ^#include|wc -l)
    echo $(($lines2 - $lines_one_time_legacy))
done

# Num keywords of NEW
readarray -t keywords_new_arr < new/keywords.txt
keywords_new=$(join_by '|' "${keywords_new_arr[@]}")

echo "---NEW KEYWORDS---"
for i in "${benchmarks[@]}"
do
    echo -ne "$i:\t\t"
    num_kwds=$(cat `find new/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` | grep -c -E "(${keywords_new})")
    echo $num_kwds
done


# Num keywords of OLD
readarray -t keywords_old_arr < legacy-gcc-correct/keywords.txt
keywords_old=$(join_by '|' "${keywords_old_arr[@]}")

echo "---OLD KEYWORDS---"
for i in "${benchmarks[@]}"
do
    echo -ne "$i:\t\t"
    num_kwds=$(cat `find legacy-gcc-correct/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` | grep -c -E "(${keywords_old})")
    num_kwds_getset=$(cat `find legacy-gcc-correct/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` | grep -c -E "(__GET|__SET|__GET_ADDR)")
    num_kwds_task=$(cat `find legacy-gcc-correct/benchmarks/$i -maxdepth 1 -name *.c -not -name "*_instrumented.c"` | grep -c -E "(TASK|ENTRY_TASK)")
    percentage_getset=$((100 * $num_kwds_getset / $num_kwds))
    percentage_task=$((100 * $num_kwds_task / $num_kwds))
    percentage_total=$(($percentage_getset + $percentage_task))
    keywords_left=$(($num_kwds - $num_kwds_getset - $num_kwds_task))
    echo -e "$num_kwds\t$num_kwds_getset\t$percentage_task%\t$num_kwds_task\t$percentage_getset%\t$percentage_total%\t$keywords_left"
done