redis-cli DBSIZE >/dev/null
if ! [ $? = 0 ]; then
 	echo "Erreur, pas de connection avec le serveur redis!"
 	exit 1
fi

threshold=3000
delay=2

while :
do
	nb=$(redis-cli --raw LLEN mafile)
	if [ "$nb" -gt "$threshold" ]; 
	then
		./consumer.sh
	fi
done
