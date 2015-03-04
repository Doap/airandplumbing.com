#!/bin/bash
mv /var/www/html/airandplumbing.com/wp-content/uploads /var/www/html/airandplumbing.com/wp-content/uploads.bak
ln -s /srv/www/uploads/sinkjuice/airandplumbing.com/uploads/ /var/www/html/airandplumbing.com/wp-content/uploads
echo "/startup/RunResourceTest-airandplumbing.com.sh just ran on `curl -s http://169.254.169.254/latest/meta-data/public-ipv4`." | tee /tmp/startup.log
