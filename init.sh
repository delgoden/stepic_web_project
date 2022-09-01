  sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
  sudo rm -rf /etc/nginx/sites-enabled/default
  sudo nginx -s reload
  gunicorn -c etc/hello.py hello:app
  #sudo /etc/init.d/nginx restart