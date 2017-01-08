package 'gnupg'

include_cookbook 'systemd-user'
systemd_user 'dirmngr.socket'
systemd_user 'gpg-agent.socket'
