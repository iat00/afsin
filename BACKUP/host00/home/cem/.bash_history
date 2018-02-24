sudo apt install fish
tmux
fish
cd .ssh/
la
cat authorized_keys 
la
ls -la
date
pwd
tail -1 /home/cem/.ssh/authorized_keys >> ~root/.ssh/authorized_keys 
cat ~root/.ssh/authorized_keys 
cat authorized_keys 
cd .ssh/
ll
cat authorized_keys 
sudo
ll
df-h
df -h
htop
lsmod | grep kvm 
grep -E '^flags.*\b(vmx|svm)\b' /proc/cpuinfo
cat /proc/cpuinfo
clear
fish
ll
fish
ll
la
l
ls
fish
ll
cat .bashrc 
fish
id -a
kvm -hda /home/otto/virtuelle_laufwerke/ubuntu.img -cdrom /dev/cdrom -m 384 -boot c
wget http://releases.ubuntu.com/16.04/ubuntu-16.04.1-server-amd64.iso.torrent?_ga=1.253308621.512092468.1451178598 
ll
lynx http://releases.ubuntu.com/16.04/ubuntu-16.04.1-server-amd64.iso.torrent?_ga=1.253308621.512092468.1451178598
ll
nl -ba ubuntu-16.04.1-server-amd64.iso.torrent\?_ga\=1.253308621.512092468.1451178598 
rm ubuntu-16.04.1-server-amd64.iso.torrent\?_ga\=1.253308621.512092468.1451178598 
ll
wget http://cdimage.debian.org/debian-cd/8.6.0/amd64/iso-cd/debian-8.6.0-amd64-netinst.iso
ll
rm debian-8.6.0-amd64-netinst.iso 
wget http://cdimage.debian.org/debian-cd/8.6.0/i386/iso-cd/debian-8.6.0-i386-netinst.iso
ll
rm debian-8.6.0-i386-netinst.iso 
ll
wget http://cdimage.debian.org/debian-cd/8.6.0/amd64/iso-cd/debian-8.6.0-amd64-netinst.iso
kvm -hda debian-8.6.0-amd64-netinst.iso 
kvm -cdrom debian-8.6.0-amd64-netinst.iso 
kvm debian-8.6.0-amd64-netinst.iso 
mc
ll
rm debian-8.6.0-amd64-netinst.iso 
wget http://cdimage.debian.org/debian-cd/8.6.0/i386/iso-cd/debian-8.6.0-i386-netinst.iso
fish
wget http://cdimage.debian.org/debian-cd/8.6.0/amd64/iso-cd/debian-8.6.0-amd64-netinst.iso
kvm -hda debian-8.6.0-amd64-netinst.iso -m 384 -boot c
kvm -drive format=rwa file=debian-8.6.0-amd64-netinst.iso -m 384 -boot c
qemu-system -drive format=rwa file=debian-8.6.0-amd64-netinst.iso -m 384 -boot c
man kvm
qemu-system-x86_64 -drive format=rwa file=debian-8.6.0-amd64-netinst.iso -m 384 -boot c
man kvm
qemu-system-x86_64 -drive format=rwa file=debian-8.6.0-amd64-netinst.iso -enable-kvm -m 384 -boot c
man kvm
qemu-system-x86_64 -drive format=raw file=debian-8.6.0-amd64-netinst.iso -enable-kvm -m 384 -boot c
htop
kvm -drive format=raw file=debian-8.6.0-amd64-netinst.iso -m 384 -boot c
kvm -hda debian-8.6.0-amd64-netinst.iso -m 384 -boot c
kvm -drive format=raw -hda debian-8.6.0-amd64-netinst.iso -m 384 -boot c
kvm -m 384 -boot c -drive format=raw file=debian-8.6.0-amd64-netinst.iso
date
kvm -drive format=raw,file=debian-8.6.0-amd64-netinst.iso -m 384 -boot c
kvm -drive format=raw,file=debian-8.6.0-amd64-netinst.iso -nographic -m 384 -boot c 
sudo lsof -i
env
who
exit
ps
ls -al
du -sh *iso
kvm -drive format=raw,file=debian-8.6.0-amd64-netinst.iso -nographic -m 384 -boot c 
who
la
ls
ll
