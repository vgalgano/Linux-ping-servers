#!bin/sh
date
cat /home/vgalgano/Desktop/servers.txt | while read output

do
   date;   
   date +"%T";
   ping -c2  "$output" &> /dev/null  &&
   echo "node $output is alive" ||  
   echo "node $output is not responding" 
     
done >> report.txt
