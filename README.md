### Requirements

- git
- puppet (>=4)
- puppet-lint (optional)
- graphviz (optional)

### Usage

    ./apply.sh

### FAQ

- If you get errors reporting that vcsrepo is not found, try:

    $ cp -r /etc/puppetlabs/code/environments/production/modules/vcsrepo modules/

- If you get errors reporting that bash is not found, try:

    $ sed -i 's,#!/usr/local/bin/bash,#!/bin/bash' apply.sh

- Installing non intrusive puppet on RHEL/CentOS, try:

    $ sudo rpm -U https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
    $ sudo yum install -y puppet-agent
    $ sudo rpm -e puppetlabs-release-pc1
    $ rm -f /etc/yum.repos.d/puppetlabs-pc1.repo

  Puppet should now be available in `/opt/puppetlabs/puppet/bin`.

### Author

- Aurelien Vallee <vallee.aurelien@gmail.com>
