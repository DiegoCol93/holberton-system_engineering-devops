# Sets up the ssh_config file for using holberton key and
# no password on outbound ssh connections.

file { 'Ensure File':
  ensure => present,
  path    => '/etc/ssh/ssh_config',
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
}

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/holberton'
}

file_line { 'Declare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no'
}
