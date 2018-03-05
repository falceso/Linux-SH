mkdir /backups/$(date '+%b-%d-%Y-%H')
cd /srv/daemon-data

for i in *
do
echo "Processing folder $i";
[ -d "$i" ] && tar -cvpzf "$i.tar.gz" "$i"
echo "SUCCESS! Created ${i%/}.tar.gz"
done
mv *.tar.gz /backups/$(date '+%b-%d-%Y-%H')

