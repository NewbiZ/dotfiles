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

### Author

- Aurelien Vallee <vallee.aurelien@gmail.com>
