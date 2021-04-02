# Creates the file '/tmp/holberton', mode '0744', owner and group 'www-data',
# containing 'I love Puppet'.
file { 'holberton':
  path    => '/tmp/holberton',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}
