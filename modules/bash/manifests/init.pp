class bash {

    file { "${::home}/.bashrc":
        ensure => file,
        source => 'puppet:///modules/bash/bashrc'
    }

}
