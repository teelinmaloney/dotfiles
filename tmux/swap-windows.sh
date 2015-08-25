CUR_INDEX=$(tmux display-message -p '#I')
TOP_INDEX=$(tmux list-windows | cut -c 1 | tail -1)

if [ "$1" = "left" ]
then
  if (( "$CUR_INDEX" > "1"))
  then
    tmux swap-window -t `expr $CUR_INDEX - 1`
  fi
elif [ "$1" = "right" ]
then
  if (( "$CUR_INDEX" < "$TOP_INDEX"))
  then
    tmux swap-window -t `expr $CUR_INDEX + 1`
  fi
fi
