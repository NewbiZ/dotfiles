class vim::pathogen::setup {

    file { "${::home}/.vim":
        ensure => directory,
    }

    file { "${::home}/.vim/autoload":
        ensure  => directory,
        require => File["${::home}/.vim"]
    }

    file { "${::home}/.vim/bundle":
        ensure  => directory,
        require => File["${::home}/.vim"]
    }
    
    file { "${::home}/.vim/autoload/pathogen.vim":
        ensure  => file,
        source  => 'puppet:///modules/vim/pathogen.vim',
        require => File["${::home}/.vim/autoload"]
    }

}
