#!/bin/bash

nmap -oG out.txt 172.16.0.0/24
nmap -sU -F -oG out2.txt 172.16.0.0/24

echo "# - IP - TCP ports" > "scan-result_2.csv"

for ip in $( cat out.txt | grep "Ports:" | awk '{print $2}'); do
  open_ports_tcp=$(cat out.txt | grep $ip | grep -oP '\d+\/open\/tcp' | wc -l)
  open_ports_udp=$(cat out2.txt | grep $ip | grep -oP '\d+\/open\/udp' | wc -l)
  
  echo "$ip;$open_ports_tcp;$open_ports_udp" >> "scan-result_2.csv"
done

echo "Scan terminé. Voir scan-result_2.csv."
