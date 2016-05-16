#!/usr/local/bin/bash

# Current script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check for lint errors
echo -e "\n> Checking lint:"
puppet-lint --no-documentation-check ${DIR}
if [ $? -eq 0 ]
then
    echo "Everything perfect."
else
    echo "Aborting."
    exit 1
fi

# Puppet modules
echo -e "\n> Updating puppet modules:"
sudo puppet module install puppetlabs-vcsrepo

# Apply puppet manifest locally
echo -e "\n> Applying puppet manifest:"
puppet apply --modulepath ${DIR}/modules ${DIR}/manifests/site.pp
