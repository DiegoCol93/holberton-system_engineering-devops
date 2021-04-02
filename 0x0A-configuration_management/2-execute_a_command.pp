exec { 'killmenow':
  command  => 'pkill -f killmenow',
  onlyif   => 'ps -aux | grep killmenow',
  user     => 'root',
  provider => 'shell',
  returns  => ''
}
