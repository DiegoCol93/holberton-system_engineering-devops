# Sets up the ssh_config file for using holberton key and no password outbound ssh connections.
file_line { 'Turn off passwd auth':
  ensure   => 'present',
  path     => '/etc/ssh/ssh_config',
  line     => '    IdentityFile ~/.ssh/holberton',
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no'
}
