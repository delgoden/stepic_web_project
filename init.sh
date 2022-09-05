  sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
  sudo rm -rf /etc/nginx/sites-enabled/default
  sudo nginx -s reload
  #sudo /etc/init.d/nginx restart
  cd ask
  exec gunicorn --bind=0.0.0.0:8000 ask.wsgi
