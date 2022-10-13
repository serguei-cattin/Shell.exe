for ligne in `cat /home/pikadmin1/Téléchargements/Shell_Userlist.csv`;
do
id=`echo ${ligne} | cut -d "," -f 1`
prenom=`echo ${ligne} | cut -d "," -f 2`
nom=`echo ${ligne} | cut -d "," -f 3`
mdp=`echo ${ligne} | cut -d "," -f 4`
role=`echo ${ligne} | cut -d "," -f 5`
echo "$mdp"
mdpc=$(perl -e 'print crypt($ARGV[0], "salt")', $mdp)
echo "$mdpc"
sudo useradd -m -p $mdpc $prenom-$nom


if [[ "$role" =~ .*Admin.* ]]
then
echo "Ajout de l'utilisateur à la table des administrateur"
sudo adduser $prenom-$nom sudo
sudo adduser $prenom-$nom adm
else
echo "l'utilisateur n'est que $role"
fi
done
exit 0
