nginx:
  pkg:
    - installed

/usr/share/nginx/html/index.html:
  file:
    - managed
    - require:
      - pkg: nginx
    - source: salt://webserver/index.html
