class i3 {

    package { 'i3':
        ensure => present,
    }

    file { "${::hiera('localuser.home')}/.i3":
        ensure => directory,
    }

    file { "${::hiera('localuser.home')}/.i3/config":
        ensure => file,
        source => 'puppet:///modules/i3/config'
    }

    file { "${::hiera('localuser.home')}/.i3/background.png":
        ensure => file,
        source => 'puppet:///modules/i3/background.png'
    }

}

