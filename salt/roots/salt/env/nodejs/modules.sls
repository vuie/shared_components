include:
  - env.nodejs.node

packages:
  npm.installed:
    # packages installed globally by default
    - pkgs:
      - browserify
      - csslint
      - grunt-cli
      - npm@next
      - reactify
      - servedir
      - watchify
    - require:
      - sls: env.nodejs.node

# phantomjs needs its own install due to undeclared dependency on libfontconfig
# see https://github.com/ariya/phantomjs/issues/10904
libfontconfig:
  pkg.installed

phantomjs:
  npm.installed:
  - require:
    - pkg: libfontconfig
    - sls: env.nodejs.node
