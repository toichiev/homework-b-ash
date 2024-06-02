function ff() {
  useradd tim
  useradd ann
  useradd brad

  mkdir kaizen kairat

  touch hello world
}

function sf() {
 yum install -y wget httpd tree git
}
read -p " enter your number 1 or 2: " choice
if [ $choice -eq 1 ]; then
ff
echo " users,foulders and files created "
elif [ $choice -eq 2 ]; then
sf
echo " wget,httpd,tree,git installed "
else
echo " invalid choice.Run again and choice 1 or 2 "
fi
