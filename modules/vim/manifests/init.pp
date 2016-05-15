class vim {

    require vim::setup

    #
    # Color themes
    #
    vim::pathogen::bundle { 'bubblegum':
        url => 'git://github.com/baskerville/bubblegum.git'
    }

    vim::pathogen::bundle { 'zenburn':
        url => 'git://github.com/jnurmine/Zenburn.git'
    }

    #
    # Python
    #
    vim::pathogen::bundle { 'syntastic':
        url => 'git://github.com/scrooloose/syntastic.git'
    }

    #
    # Puppet
    #
    vim::pathogen::bundle { 'puppet':
        url => 'git://github.com/puppetlabs/puppet-syntax-vim.git'
    }

}
