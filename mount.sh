if grep -qs '/home/krutonium/exthdd' /proc/mounts; then
	echo "Already Mounted"
else
	sshfs -o allow_other,idmap=user,IdentityFile=~/.ssh/id_rsa krutonium@192.168.0.10:/HDD/ /home/krutonium/exthdd
	sshfs -o allow_other,idmap=user,IdentityFile=~/.ssh/id_rsa krutonium@192.168.0.10:/home/krutonium/ /home/krutonium/remotehome
fi
export MANGOHUD_DLSYM=1
sudo systemctl restart betterfancontroller
#export WINEESYNC=1
export WINEFSYNC=1
