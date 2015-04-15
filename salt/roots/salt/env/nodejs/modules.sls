include:
  - env.nodejs.node

libfontconfig:
  pkg.installed

browserify:
  npm.installed:
    - require:
      - sls: env.nodejs.node

csslint:
  npm.installed:
    - require:
      - sls: env.nodejs.node

grunt-cli:
  npm.installed:
    - require:
      - sls: env.nodejs.node

npm@next:
  npm.installed:
    - require:
      - sls: env.nodejs.node

phantomjs:
  npm.installed:
  - require:
    # due to undeclared dependency on libfontconfig
    # see https://github.com/ariya/phantomjs/issues/10904
    - pkg: libfontconfig
    - sls: env.nodejs.node

reactify:
  npm.installed:
    - require:
      - sls: env.nodejs.node

servedir:
  npm.installed:
    - require:
      - sls: env.nodejs.node

watchify:
  npm.installed:
    - require:
      - sls: env.nodejs.node
