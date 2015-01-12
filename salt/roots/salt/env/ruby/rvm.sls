include:
  - env.ruby.rvm_gpg_signature

rvm:
  group.present: []
  user.present:
    - gid: rvm
    - home: /home/rvm
    - require:
      - group: rvm
      - sls: env.ruby.rvm_gpg_signature
