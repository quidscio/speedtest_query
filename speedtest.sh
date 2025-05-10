#/bin/bash
# 03.22.22 V1
# 11.19.22 Add --secure as HTTP apparently not supported anymore 
# 05.09.25 Generalize for move to server 

#!/usr/bin/env bash

# paths (option A is WSL, option B is server)
SCRIPTA="$HOME/___quick/arc/projects/speedtest_query/dep_speedtest-cli/speedtest.py"
SCRIPTB="$HOME/projects/speedtest_query/dep_speedtest-cli/speedtest.py"
DATAA="$HOME/___quick/arc/projects/speedtest_query/data/results-cli.csv"
DATAB="$HOME/projects/speedtest_query/data/results-cli.csv"

set -x 
if [ -f "$SCRIPTA" ]; then
  echo "\"$(date +'%Y-%m-%d')\",\"$(date +'%H:%M:%S')\",$("$SCRIPTA" --csv --secure)" \
    >> "$DATAA"
elif [ -f "$SCRIPTB" ]; then
  echo "\"$(date +'%Y-%m-%d')\",\"$(date +'%H:%M:%S')\",$("$SCRIPTB" --csv --secure)" \
    >> "$DATAB"
else
  echo "Error: speedtest.py not found in either location" >&2
  exit 1
fi