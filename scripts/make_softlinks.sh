#!/bin/bash
#mv /var/www/html/airandplumbing.com/wp-content/uploads /var/www/html/airandplumbing.com/wp-content/uploads.bak
#mv /var/www/html/airandplumbing.com/wp-content/plugins /var/www/html/airandplumbing.com/wp-content/plugins.bak
#mv /var/www/html/airandplumbing.com/wp-content/themes /var/www/html/airandplumbing.com/wp-content/themes.bak
ln -s /srv/www/uploads/sinkjuice/airandplumbing.com/uploads/ /var/www/html/airandplumbing.com/wp-content/uploads
ln -s /srv/www/uploads/sinkjuice/airandplumbing.com/themes/ /var/www/html/airandplumbing.com/wp-content/themes
ln -s /srv/www/uploads/sinkjuice/airandplumbing.com/plugins/ /var/www/html/airandplumbing.com/wp-content/plugins
#rm -rf /var/www/html/airandplumbing.com/wp-content/plugins
cp -f /startup/footer.php.airandplumbing.com /var/www/html/airandplumbing.com/wp-content/themes/AandP-Child/footer.php 
/startup/genvhost.sh airandplumbing.com
/startup/make-wp-configs airandplumbing.com
service httpd restart
echo "/startup/RunResourceTest-airandplumbing.com.sh just ran on `curl -s http://169.254.169.254/latest/meta-data/public-ipv4`." | tee /tmp/startup.log
