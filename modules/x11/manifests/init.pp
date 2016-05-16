class x11 {

    package { 'xorg':
        ensure => present,
    }

    file { "${::home}/.Xresources":
        ensure => file,
        source => 'puppet:///modules/x11/Xresources'
    }

    exec { 'Refresh X11 database':
        command     => "xrdb ${::home}/.Xresources",
        subscribe   => File["${::home}/.Xresources"],
        refreshonly => true,
    }

}
