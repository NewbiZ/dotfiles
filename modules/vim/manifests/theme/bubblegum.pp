class vim::theme::bubblegum {
    file { "${::home}/.vim/colors":
        ensure => directory,
    }

    file { "${::home}/.vim/colors/bubblegum.vim":
        ensure => file,
        source => 'puppet:///modules/vim/bubblegum.vim'
    }
}
