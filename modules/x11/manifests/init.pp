class x11 {

    package { 'xorg':
        ensure => present,
    }

    file { "${::hiera('localuser.home')}/.Xresources":
        ensure => file,
        source => 'puppet:///modules/x11/Xresources'
    }

    exec { 'Refresh X11 database':
        command     => "xrdb ${::hiera('localuser.home')}/.Xresources",
        subscribe   => File["${::hiera('localuser.home')}/.Xresources"],
        refreshonly => true,
    }

}
