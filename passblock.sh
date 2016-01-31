echo -n "Password: "
stty -echo
read password
stty echo
echo ""

correct="$(cat /etc/verify)"

if [ $password = $correct ] 
  then
    $@
fi
