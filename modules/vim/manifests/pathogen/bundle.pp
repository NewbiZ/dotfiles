define vim::pathogen::bundle (String $url) {

    vcsrepo { "${::home}/.vim/bundle/${name}":
        ensure => present,
        source => $url,
    }

}
