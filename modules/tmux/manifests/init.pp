class tmux {

    package { 'tmux':
        ensure => present,
    }

    file { "${::home}/.tmux.conf":
        ensure  => file,
        source  => 'puppet:///modules/tmux/tmux.conf',
        require => Package['tmux'],
    }

}
