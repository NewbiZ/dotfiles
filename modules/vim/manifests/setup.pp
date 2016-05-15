class vim::setup {

    # Setup 'vim' package
    package { 'vim':
        ensure => present,
    }

    file { "${::home}/.vimrc":
        ensure => file,
        source => 'puppet:///modules/vim/vimrc'
    }

    # Setup pathogen
    require vim::pathogen::setup

}
