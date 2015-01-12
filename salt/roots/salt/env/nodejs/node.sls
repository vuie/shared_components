include:
  - env.nodejs.debian_nodesource_repo

nodejs:
  pkg.installed:
    - require:
      - sls: env.nodejs.debian_nodesource_repo
