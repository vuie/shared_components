curl -sL https://deb.nodesource.com/setup | sudo bash -:
  cmd.run:
    # this isn't reliable if we add additional sources...
    # @TODO find a more reliable way to determine if the NodeSource
    #  repo entry already exists
    - creates: /etc/apt/sources.list.d/nodesource.list
