class git {

    package { 'git':
        ensure => present,
    }

    $localuser_fullname = hiera('localuser.name')
    $localuser_mail = hiera('localuser.mail')

    file { "${::hiera('localuser.home')}/.gitconfig":
        ensure  => file,
        content => template('git/gitconfig.erb'),
        require => Package['git']
    }

}
