!#/bin/bash

echo "Deploying the Website"
echo
echo "#######################################################"
echo "Declaring the Variables"
SVC=httpd
PACK="httpd wget unzip"
WEBURL=https://www.tooplate.com/download/2092_shelf
echo "########################################################"
echo
echo "Installing the Packages"
yum install $PACK -y
echo
echo "########################################################"
echo
echo "Start and Enable HTTPD"
systemctl start $SVC
systemctl enable $SVC
echo
echo "#########################################################"
echo
echo "Copying the website data on Apache doc root dir"
cd /tmp && wget -O website.zip $WEBURL
cd /tmp && unzip -o website.zip
cp -r /tmp/2092_shelf/* /var/www/html
echo
echo "Restarting HTTPD"
systemctl restart $SVC
echo
echo "##########################################################"

