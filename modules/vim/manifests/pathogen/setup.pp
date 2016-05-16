class vim::pathogen::setup {

    file { "${::hiera('localuser.home')}/.vim":
        ensure => directory,
    }

    file { "${::hiera('localuser.home')}/.vim/autoload":
        ensure  => directory,
        require => File["${::hiera('localuser.home')}/.vim"]
    }

    file { "${::hiera('localuser.home')}/.vim/bundle":
        ensure  => directory,
        require => File["${::hiera('localuser.home')}/.vim"]
    }
    
    file { "${::hiera('localuser.home')}/.vim/autoload/pathogen.vim":
        ensure  => file,
        source  => 'puppet:///modules/vim/pathogen.vim',
        require => File["${::hiera('localuser.home')}/.vim/autoload"]
    }

}
