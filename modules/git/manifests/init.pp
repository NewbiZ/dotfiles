class git {

    package { 'git':
        ensure => present,
    }

    file { "${::home}/.gitconfig":
        ensure  => file,
        content => template('git/gitconfig.erb'),
        require => Package['git']
    }

}
