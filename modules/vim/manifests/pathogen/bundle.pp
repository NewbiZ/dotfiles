define vim::pathogen::bundle (String $url) {

    vcsrepo { "${::hiera('localuser.home')}/.vim/bundle/${name}":
        ensure => present,
        source => $url,
    }

}
