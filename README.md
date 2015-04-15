UIE Development Environment
===========================

About
-----

Prerequisites
-------------
* Install [Virtual Box](https://www.virtualbox.org/wiki/Downloads).
* Install [Vagrant](https://www.vagrantup.com/downloads.html).
* Install [Proxy Configuration Plugin for Vagrant](http://tmatilai.github.io/vagrant-proxyconf/).

        vagrant plugin install vagrant-proxyconf


Usage
-----
@TODO

Personal Environment Setup (post `vagrant up`)
----------------------------------------------

    # login to our internal npm registry
    # username and password can be the same, should use your corporate credentials
    @TODO get command

    # create your ssh key so you can clone our Stash-hosted git projects
    ssh-keygen -t rsa -C "{{corporate email}}"

    # add this key to Stash; navigate to @TODO at stash link

    # clone the appropriate repository
    mkdir /vagrant/repos && cd $_
    git clone {{repo ssh url}}

    # initialize and build
    npm install .

