include:
  - env.ruby.rvm

ruby-2.2.0:
  rvm.installed:
    - require:
      - sls: env.ruby.rvm
