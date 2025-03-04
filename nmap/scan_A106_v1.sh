#!/bin/bash

echo "# - IP - TCP ports" > "scan-result_1.csv"

for ip in $(nmap -sn 172.16.0.0/24 | grep "Nmap scan report for" | awk '{print $5}'); do
  open_ports=$(nmap -p- --open -T4 $ip | grep "^80/tcp" -c)
  
  echo "$ip;$open_ports" >> "scan-result_1.csv"
done

echo "Scan terminé. Voir scan-result_1.csv."
