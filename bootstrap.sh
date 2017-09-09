user="$USER"
prefix="ssh-"
username=${user#$prefix}
userdir=/www/htdocs/${username}
cd ${userdir}
git clone https://github.com/TYPO3-Console/TYPO3-Console.git
cp TYPO3-Console/Scripts/typo3cms ${userdir}/bin
echo "alias typo3cms='${userdir}/bin/typo3cms'" >> ${userdir}/.user_bashrc
rm -rf TYPO3-Console
source /.bashrc