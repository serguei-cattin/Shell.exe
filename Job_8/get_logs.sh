


DATE=$(date +%d-%m-%y-%H:%M)
fichier=number_connection-$DATE
last pikadmin1|wc -l >> $fichier
tar -czvf /home/pikadmin1/Shell.exe/Job_8/$fichier.tar.gz $fichier

rm $fichier
mv $fichier.tar.gz /home/pikadmin1/Shell.exe/Job_8/Backup

