#!/bin/bash
touch /tmp/dependancy_Nut_free_in_progress
echo 0 > /tmp/dependancy_Nut_free_in_progress
versionPHP=$(php -r \@phpinfo\(\)\; | grep 'PHP Version' -m 1 | awk '{ print $4 }' | cut -d'.' -f1)
if [ $versionPHP = "5" ]
	then
		echo "*****************************************************************************************************"
		echo "*   Lancement de l'installation du module SSH pour PHP 5 / Launch install of module ssh2 for PHP 5  *"
		echo "*****************************************************************************************************"
		sudo apt-get clean
		echo 20 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get update
		echo 60 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get install -y nut-client
  		echo 80 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get install -y php-phpseclib
		echo 100 > /tmp/dependancy_Nut_free_in_progress
		echo "Tout est installé avec succès - Everything is successfully installed!"
		echo "*****************************************************************************************************"
		echo "*  Installation Ok																				  *"
		echo "*****************************************************************************************************"
fi
if [ $versionPHP = "7" ]
	then
		echo "*****************************************************************************************************"
		echo "*   Lancement de l'installation du module SSH pour PHP 7 / Launch install of module ssh2 for PHP 7  *"
		echo "*****************************************************************************************************"
		sudo apt-get clean
		echo 20 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get update
		echo 60 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get install -y nut-client
  		echo 80 > /tmp/dependancy_Nut_free_in_progress
		sudo apt-get install -y php-phpseclib
		echo 100 > /tmp/dependancy_Nut_free_in_progress
		echo "*****************************************************************************************************"
		echo "*  Installation Ok																				  *"
		echo "*****************************************************************************************************"
fi
if [ $versionPHP != "5" ] && [ $versionPHP != "7" ]
	then
		echo "Installation KO, PHP5 ou PHP7 n'est pas installé"
		echo 100 > /tmp/dependancy_Nut_free_in_progress
fi
rm /tmp/dependancy_Nut_free_in_progress
