apt-get update
apt-get -y install git
apt-get -y install apache2
sudo mkdir /vagrant/html
sudo rm -rf /var/www/html
sudo ln -s /vagrant/html/ /var/www/html
cd /vagrant/html
git clone https://github.com/jafemo/practica3

sudo a2dissite 000-default.conf
sudo ln -s /vagrant/config /etc/apache2/sites-available
sudo a2ensite sitio1
sudo a2ensite sitio2
sudo /etc/init.d/apache2 restart
