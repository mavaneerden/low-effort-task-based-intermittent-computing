sudo mspdebug tilib "prog bin/$1" "exit"

if [ "$?" -ne "0" ]; then
    echo -e "\e[1;31mError! Make sure to input a valid elf file!\e[0m"
else
    echo -e "\e[1;32mFlashed program \e[0m'$1'"
fi
