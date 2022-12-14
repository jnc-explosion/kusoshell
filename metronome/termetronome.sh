echo "Welcome to termetronome!";

if [ $# -lt 1 ]; then
  echo "Hey Donji! You're missing an argument."
  exit 1
elif [ $# -eq 1 ]; then
  echo $1 "BPM"
  set tmtrnmbpm $1
  echo $tmtrnmbpm
  set tmtrnmwait $(echo "60/"$tmtrnmbpm | bc -l)
  echo $tmtrnmwait
  sleep 10
  while true
  do
    echo -ne "\x07"
    sleep $tmtrnmwait
  done
fi

exit 0;
