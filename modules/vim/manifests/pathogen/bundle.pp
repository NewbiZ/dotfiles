define vim::pathogen::bundle (String $url) {

    vcsrepo { "${::home}/.vim/bundle/${name}":
        ensure   => present,
        provider => git,
        source   => $url,
        user     => $::username,
    }

}
