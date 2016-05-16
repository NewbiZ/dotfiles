class git {

    file { "${::home}/.gitconfig":
        ensure => file,
        content => template('git/gitconfig.erb')
    }

}
