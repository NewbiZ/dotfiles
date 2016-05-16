#
# Defaults
#
Exec {
    path => ['/bin', '/usr/bin', '/usr/local/bin', '/sbin', '/usr/sbin'],
    user => hiera('localuser.name'),
    cwd  => hiera('localuser.home'),
}

File {
    owner => hiera('localuser.name'),
}

Vcsrepo {
    user     => hiera('localuser.name'),
    provider => git,
}

#
# Nodes (Hiera)
#
hiera_include('classes')
