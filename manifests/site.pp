$fullname = 'Aurelien Vallee'
$username = 'avallee'
$mail = 'vallee.aurelien@gmail.com'
$home = '/home/avallee'

node 'xmg' {
    include vim
    include bash
    include tmux
    include git
    include x11
    include i3
}
