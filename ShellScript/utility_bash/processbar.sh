function ProgressBar {
  local _progress
  local _done
  local _left
  local _fill
  local _empty
  # shellcheck disable=SC1036
  let _progress=(${1}*100/${2}*100)/100
  let _done=(${_progress})
  let _left=100-${_done}
  _fill=$(printf "%${_done}s")
  _empty=$(printf "%${_left}s")
  printf "\rProgress: [${_fill// /#}${_empty// /-}] ${_progress}%%\t- Counts: ${1}/${2}-${3}\n"
}

#send it in loop
ProgressBar 'firstcount' 'totalcount' 'MESSAGE'