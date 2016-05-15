class git {

    file { "${::home}/.gitconfig":
        ensure => file,
        source => 'puppet:///modules/git/gitconfig'
    }

}
