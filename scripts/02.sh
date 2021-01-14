echo Current Users
cat /etc/passwd | grep home | awk -F':' '{print $1}'
echo "\n"

read user
if [ $user ]
then
    sudo deluser $user
else
    echo no username entered.
fi

echo "\n"
echo Current Users
cat /etc/passwd | grep home | awk -F':' '{print $1}'