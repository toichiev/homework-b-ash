#!/bin/bash


function user() {   
  for i in emma mia chloe zoe
     do 
       useradd $i 
 done

}

 function folder() {
  for a in day week month year
     do 
      mkdir $a
  done
}


 function install() {
   for b in httpd  ghostscript mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip
   do 
  yum install -y $b
   wget https://wordpress.org/latest.tar.gz
   tar zxf latest.tar.gz
    mv wordpress /var/www/html/
    chown -R www-data:www-data /var/www/html/
    chmod 755 /var/www/html/
   systemctl start hhtpd
   systemctl enable httpd
   systemctl restart httpd
   
done

} 


read -p "Enter the function name to execute ( user/folder/install): " function_name

if [[ $function_name == "user" ]]; then
    user
elif [[ $function_name == "folder" ]]; then
    folder
elif [[ $function_name == "install" ]]; then
    install
else
    echo "Invalid function name. Please enter either 'user' 'folder' or 'install'."
fi
