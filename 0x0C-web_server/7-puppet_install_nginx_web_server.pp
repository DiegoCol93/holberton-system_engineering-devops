# apt-get update.
exec { 'update':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell'
}
->

# Installs the nginx package using apt.
package { 'nginx':
  ensure   => present,
  name     => 'nginx',
  provider => 'apt'
}
->

# Creates and sets the content of the "index.html" file.
file { 'index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  content => 'Holberton School'
}
->

# Creates and sets the content of the "404.html" file.
file { '404.html':
  ensure  => present,
  path    => '/var/www/html/404.html',
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  content => "Ceci n'est pas une page"
}
->

# Sets the default configurations for nginx.
exec { 'Set default /redirect_me':
  command  => 'sed -i "48i \\\n\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;\n\t}" /etc/nginx/sites-available/default',
  user     => 'root',
  provider => 'shell'
}
->
exec { 'Set default /404':
  command  => 'sed -i "42i \\\n\terror_page 404 /404.html;" /etc/nginx/sites-available/default',
  user     => 'root',
  provider => 'shell'
}

->
exec { 'Start nginx':
  command  => 'service nginx restart',
  user     => 'root',
  provider => 'shell'
}
