Exec {
    path => ['/bin', '/usr/bin', '/usr/local/bin', '/sbin', '/usr/sbin'],
    user => $::username,
    cwd  => $::home,
}

File {
    owner => $username,
}
