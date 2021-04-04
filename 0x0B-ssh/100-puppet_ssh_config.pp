# Sets up the ssh_config file for using holberton key and no password outbound ssh connections.
file_line { 'Turn off passwd auth':
  ensure => 'absent',
  path   => '~/.ssh/config',
  line   => '    IdentityFile ~/.ssh/holberton',
}

file_line { 'Declare identity file':
  ensure => 'absent',
  path   => '~/.ssh/config',
  line   => '    PasswordAuthentication no'
}
