class i3 {

    package { 'i3':
        ensure => present,
    }

    file { "${::home}/.i3":
        ensure => directory,
    }

    file { "${::home}/.i3/config":
        ensure => file,
        source => 'puppet:///modules/i3/config'
    }

    file { "${::home}/.i3/background.png":
        ensure => file,
        source => 'puppet:///modules/i3/background.png'
    }

}

