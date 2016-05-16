class vim::setup {

    # Setup 'vim' package
    package { 'vim':
        ensure => present,
    }

    file { "${::hiera('localuser.home')}/.vimrc":
        ensure => file,
        source => 'puppet:///modules/vim/vimrc'
    }

    # Setup pathogen
    require vim::pathogen::setup

}
