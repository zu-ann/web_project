sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf   /etc/gunicorn.d/test.conf
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/django.conf
sudo /etc/init.d/gunicorn restart
# sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application
# sudo service gunicorn restart

