#Client configuration file (w/ Puppet)
exec { 'add_ssh_config':
    path        => '/usr/bin:/bin',
    command     => 'echo "IdentityFile ~/.ssh/school\nPasswordAuthentication no" >> /etc/ssh/ssh_config',
    unless      => 'grep -q "IdentityFile ~/.ssh/school" /etc/ssh/ssh_config && grep -q "PasswordAuthentication no" /etc/ssh/ssh_config',
}
