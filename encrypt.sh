#!/usr/local/bin/bash

echo -e "Hi, please type the word: \c "
read word
echo "The word you entered is: $word"

echo "The cipher is: "

declare -a AscValue
declare -a Cipher

for ((i=0; i<${#word}; i++));
do
  AscValue[$i]="${word:$i:1}";
done

for j in "${AscValue[@]}"
do
  AscValue=`printf "%d\n" "'$j'"`
  let "Cipher = $AscValue + 3"
  echo $Cipher | awk '{printf("%c", '$Cipher')}'
done

printf "\n"
