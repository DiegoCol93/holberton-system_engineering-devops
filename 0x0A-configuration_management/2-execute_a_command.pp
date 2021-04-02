# Uses exec to run pkill and finish the 'killmenow' process if it exists.
exec { 'killmenow':
  command  => 'pkill -f killmenow',
  onlyif   => 'ps -aux | grep killmenow',
  user     => 'root',
  provider => 'shell',
  returns  => ''
}
