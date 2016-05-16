class vim::theme::bubblegum {
    file { "${::hiera('localuser.home')}/.vim/colors":
        ensure => directory,
    }

    file { "${::hiera('localuser.home')}/.vim/colors/bubblegum.vim":
        ensure => file,
        source => 'puppet:///modules/vim/bubblegum.vim'
    }
}
