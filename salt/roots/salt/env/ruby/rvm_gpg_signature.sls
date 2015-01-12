gpg --import /home/vagrant/mpapis.asc:
  cmd.run:
    - require:
      - file: /home/vagrant/mpapis.asc

/home/vagrant/mpapis.asc:
  file.managed:
    - source: https://rvm.io/mpapis.asc
    - source_hash: md5=212529b3c56bb1da76640b152c0b9c2e
