class tmux {

    package { 'tmux':
        ensure => present,
    }

    file { "${::hiera('localuser.home')}/.tmux.conf":
        ensure  => file,
        source  => 'puppet:///modules/tmux/tmux.conf',
        require => Package['tmux'],
    }

}
