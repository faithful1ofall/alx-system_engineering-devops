# Install an especific version of flask (2.1.0)

exec { 'install_flask':
  command => 'pip3 install Flask',
  unless  => 'pip3 freeze | grep Flask',
  path    => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
}
