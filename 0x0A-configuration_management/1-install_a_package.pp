# Installs the puppet-lint version 2.1.1 package using gem.
package { 'puppet-lint':
  ensure   => '2.1.1',
  name     => 'puppet-lint',
  provider => 'gem'
}
