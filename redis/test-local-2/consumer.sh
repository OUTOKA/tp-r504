
threshold=3000
delay=2

redis-cli DBSIZE >/dev/null
if ! [ $? = 0 ]; then
	echo "Erreur, pas de connection avec le serveur redis!"
	exit 1
fi

while :
do
	nb=$(redis-cli --raw LLEN mafile)
	if [ "$nb" -gt 0 ]; then
		valeur=$(redis-cli --raw RPOP mafile)
		if [ "$nb" -gt "$threshold" ]; then
			echo "ALARME ! valeur = $nb"
		fi
	else
		echo "Liste vide, attente 2s."
		sleep $delay
	fi
done

