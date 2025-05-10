# Speedtest Query 
When called by cron, collects speedtest samples and stores in csv 
* cron: suggest 3x/hour 
* Uses GH sivel/speedtest-cli with minor changes 
* WSL venv312 

## Execs Model
$HOME/___quick/arc/projects/speedtest_query/dep_speedtest-cli/speedtest.py 

Case A: 
echo "\"`date +'%Y-%m-%d'`\",\"`date +'%H:%M:%S'`\",`$HOME/___quick/arc/projects/speedtest_query/dep_speedtest-cli/speedtest.py --csv --secure`" >> $HOME/___quick/arc/projects/speedtest_query/data/results-cli.csv

Case B: 
echo "\"`date +'%Y-%m-%d'`\",\"`date +'%H:%M:%S'`\",`$HOME/arc/projects/dep_speedtest-cli/speedtest_query/speedtest.py --csv --secure`" >> $HOME/arc/projects/speedtest_query/data/results-cli.csv

## Setup 
* cd to $HOME/projects
* git clone to speedtest_query 
* cd to speedtest_query 
* cp results-cli_header.csv data/results-cli.csv 
* test 
* setup cron 
* cross fingers 