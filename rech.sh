
mkdir rep_cev;

debsecan > rep_cve_cve_logs_$(date +%Y%m%d).txt

if [ $(debsecan | wc -l) > 1000 ]; then
	echo " !!!Nombre de CVE supérieur à 1000!!!"
fi
