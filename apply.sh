#!/usr/local/bin/bash

# Current script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Function to check if a program is available
function check_program() {
    command -v "$1" >/dev/null 2>&1
}

if check_program puppet-lint
then
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
fi

if check_program puppet
then
    # Puppet modules
    echo -e "\n> Updating puppet modules:"
    sudo puppet module install puppetlabs-vcsrepo

    # Apply puppet manifest locally
    echo -e "\n> Applying puppet manifest:"
    sudo puppet apply ${DIR}/manifests/site.pp \
        --hiera_config ${DIR}/hiera.yaml \
        --modulepath ${DIR}/modules \
        --graph \
        --graphdir ${DIR}/doc
else
    echo "Puppet client not found. Aborting."
    exit 1
fi

if check_program dot
then
    # Generate documentation
    echo -e "\n> Generating documentation in doc/"
    UNPRIVILEGED_USER=$USER
    sudo chown -R $UNPRIVILEGED_USER doc/
    dot -Tpng doc/expanded_relationships.dot -o doc/expanded_relationships.png
    dot -Tpng doc/relationships.dot -o doc/relationships.png
    dot -Tpng doc/resources.dot -o doc/resources.png
fi
