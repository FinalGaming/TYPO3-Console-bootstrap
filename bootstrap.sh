#!/bin/bash

user="$USER"
prefix="ssh-"
username=${user#$prefix}
userdir=/www/htdocs/${username}
cd ${userdir}
git clone https://github.com/TYPO3-Console/TYPO3-Console.git
cp TYPO3-Console/Scripts/typo3console ${userdir}/bin
cp TYPO3-Console/Scripts/typo3console.php ${userdir}/bin
echo "alias typo3console='${userdir}/bin/typo3console'" >> ${userdir}/.user_bashrc
rm -rf TYPO3-Console
source /.bashrc