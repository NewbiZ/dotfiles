class vim::pathogen::setup {

    file { "${::home}/.vim/autoload":
        ensure => directory,
    }

    file { "${::home}/.vim/bundle":
        ensure => directory,
    }
    
    file { "${::home}/.vim/autoload/pathogen.vim":
        ensure => file,
        source => 'puppet:///modules/vim/pathogen.vim'
    }

}
