class tmux {

    file { "${::home}/.tmux.conf":
        ensure => file,
        source => 'puppet:///modules/tmux/tmux.conf'
    }

}
