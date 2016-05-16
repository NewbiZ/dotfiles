class bash {

    file { "${::hiera('localuser.home')}/.bashrc":
        ensure => file,
        source => 'puppet:///modules/bash/bashrc'
    }

}
