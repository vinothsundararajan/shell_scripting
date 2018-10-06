#--------------------------JSON UPDATE----------------------------------------#
function jsonUpdate {
  arr=()
  # shellcheck disable=SC2162
  while read x y z w v;
  do
    # shellcheck disable=SC2206
    arr=("${arr[@]}" $x $y $z $w $v)
  done  <<< "${status_up[@]}"
  # shellcheck disable=SC2206
  vars=(${arr[@]})
  len=${#arr[@]}
  printf "[\n"
  for (( i=0; i<len; i+=5 ))
  do
    # shellcheck disable=SC2059
    printf "{ \"creationDate\":\"${vars[i]}\",\"folderName\":\"${vars[i+1]}\",\"filename\":\"${vars[i+2]}\",\"targetSystem\":\"${vars[i+3]}\",\"funcpack\":\"${vars[i+4]}\"  }"
    if [ $i -lt $((len-5)) ] ; then
      printf ",\n"
    fi
  done
  printf "\n"
  printf "]\n"
}

#-------------------------------------------------------#
status_up+="${creationDate} ${foldername} ${filename}.${extension} ${System} ${Funcpack1} "