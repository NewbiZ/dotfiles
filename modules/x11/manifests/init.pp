class x11 {

    file { "${::home}/.Xresources":
        ensure => file,
        source => 'puppet:///modules/x11/Xresources'
    }

    exec { 'Refresh X11 database':
        command     => "xrdb ${::home}/.Xresources",
        subscribe   => File["${::home}/.Xresources"],
        path        => ['/usr/bin', '/usr/local/bin'],
        refreshonly => true,
    }

}
