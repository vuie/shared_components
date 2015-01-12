Installing nodejs on Ubuntu
===========================
Instructions copied from [Joyent's Github Wiki](https://github.com/joyent/node/wiki/installing-node.js-via-package-manager#debian-and-ubuntu-based-linux-distributions) and slightly modified for our specific environment (a.k.a. we LOVE proxies...).

Before installing nodejs via `apt-get`, we need to add the NodeSource repository. Both Joyent and NodeSource instruct us to use NodeSource's setup script, rather than adding the repository on our own. We add the `-E` flag for our bash invocation to pull in our proxy configuration from the current user profile:

        # Joyent's initial command:
        #   curl -sL https://deb.nodesource.com/setup | sudo bash -

        # Our modified command:
        curl -sL https://deb.nodesource.com/setup | sudo -E bash -

The `debian_nodesource_repo.sls` directives script handles this for Salt configuration management.
