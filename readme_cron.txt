# 05.09.25 rmh
* Execute 3x per hour
* See readme for quick instructions 

# 01.08.22 rmh
# Execute speedtest.net CLI 2x per hour 
# 1: run manually first to setup the csv file w/header
# 2: run triggered by cron every 20 min 

1st run:        /usr/bin/speedtest -f csv --output-header >   $HOME/arc/projects/speedtest/results.csv
Other runs:  /usr/bin/speedtest -f csv                           >> $HOME/arc/projects/speedtest/results.csv

# cron entry run 5,25,45 minute of every hour, day, month, day of week
* In speedtest.sh, place (as command didn't work directly in cron): 
* 5,25,45 * * * * echo "\"`date +'%Y-%m-%d'`\",\"`date +'%H:%M:%S'`\",`/usr/bin/speedtest -f csv`" >> $HOME/arc/projects/speedtest/results.csv 
* place command in crontab 
* 8,28,48 * * * *  $HOME/arc/projects/speedtest_query/speedtest.sh 

# crontab commands to use
Check file: crontab -l 
Edit file:     crontab -e  

# 01.09.22 rmh
* Looks like human readable outputs are consistently lower than machine readable outputs; csv, tsv, various json
* Script HR and MR runs to run serially and store the results as:
    date
    time
    server name
    server id
    latency
    jitter
    packet loss
    download
    upload share url
    
    Script should randomly choose order to run HR and MR trials 
