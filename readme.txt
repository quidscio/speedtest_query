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
 * git clone --recurse-submodules https://github.com/quidscio/speedtest_query.git
* cd to speedtest_query 
* cp results-cli_header.csv data/results-cli.csv (probably already done in repo)
* install sudo apt install python-is-python3
* ./speedtest.sh  
* setup cron 
 * crontab -e 
   * 8,28,48 * * * *  $HOME/projects/speedtest_query/speedtest.sh
* cross fingers 