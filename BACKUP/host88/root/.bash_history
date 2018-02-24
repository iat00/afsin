nv -vv host03.toparlak.de 25
nc -vv host03.toparlak.de 25
nc -vv host03.toparlak.de 80
nmap host41.toparlak.de
apt-get install nmap
nmap host41.toparlak.de
fish
Ct1991iq
fish
ll
fish
FILE=`mktemp` ;openssl dhparam 2048 -out $FILE && mv -f $FILE /etc/myssl/dh2048.pem
date
cat /etc/myssl/dh2048.pem 
fish
ll
exit
htop
last
history 
lt /var/log
ls -ltr /var/log
last -f /var/log/wtmp.1 
exit
apt update
apt upgrade
apt update
apt install bmon
bmon
htop
vim /etc/hostname 
vim /etc/hosts
+
fish
echo $(hostname -f) > /etc/mailname
fish
echo $(hostname -f) > /etc/mailname
cat /etc/mailname 
fish
dig evanzo.de
fish
apt update ; apt upgrade
apt update && apt upgrade
fish
cd /etc/
ll
ls
fish
crontab -e
cd /etc/myssl/
ll
date
vim test.txt
ll
rm -rf test.txt 
ll
crontab -e
FILE=`mktemp` ; openssl dhparam 2048 -out $FILE && mv -f $FILE /etc/myssl/dh2048.pem
ll
cd /home/cem/
ll
vim .selected_editor 
crontab -e
init 6
fish
ll
fish
ll
fish
cd 
ll
cd .ssh/
ll
cat authorized_keys 
wc -l 
wc -l authorized_keys 
vim authorized_keys 
wc -l authorized_keys 
vim authorized_keys 
cat /home/cem/.ssh/authorized_keys >> /root/.ssh/authorized_keys 
cat /root/.ssh/authorized_keys
wc -l /root/.ssh/authorized_keys 
cat /root/.ssh/authorized_keys 
vi /root/.ssh/authorized_keys
cat /root/.ssh/authorized_keys 
ssh-add -L
ll
cd /home/
ll
fish
find / -mtime -1
find / -name proc -prune -o -mtime -1
find / \( -name proc -o -name sys \) -prune -o -mtime -1
find / \( -name proc -o -name sys -o -name cache \) -prune -o -mtime -1
find / \( -name proc -o -name sys -o -name cache -o -name run \) -prune -o -mtime -1
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run \) -prune -o -mtime -1`
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev \) -prune -o -mtime -1`
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev \) -prune -o -type f -mtime -1`
date
uptime
ls -al /etc/resolv.conf 
cat /etc/resolv.conf 
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev -o -name apt \) -prune -o -type f -mtime -1`
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev -o -name apt \) -prune -o -type f -mtime -1 -print`
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev -o -name apt \) -prune -o -type f -mtime -7 -print`
ls -ltrd `find / \( -name proc -o -name sys -o -name cache -o -name run -o -name dev \) -prune -o -type f -mtime -7 -print`
emacs /var/log/unattended-upgrades/unattended-upgrades.log
less /var/log/unattended-upgrades/unattended-upgrades.log
find /etc -ls | fgrep cron
find /etc -name '*cron*'
ls -altrd `find /etc -name '*cron*'`
crontab -l
crontab -l|egrep -v '^#'
ls -altrd `find /etc -name '*cron*'`
emacs /etc/
ls -al /etc/cron.hourly/
ls -al /etc/cron.monthly/
ls -al /etc/cron.weekly/
ls -al /etc/cron.daily/
sar
cat /etc/apt/apt.conf.d/10periodic 
apt install emacs-nox 
emacs .
last
history 
ls -al /home/
emacs /home/
ps -ef
ps -ef|egrep -v ' \['
ps -ef|egrep -v ' \[.*\]$'
ps -ef|egrep -v ' \[.*\]$'|fgrep pts/0
ps -ef|egrep -v ' \[.*\]$'|fgrep -v pts/0
htop
ls -al /home/
emacs ~cem/
history 
df -h .
