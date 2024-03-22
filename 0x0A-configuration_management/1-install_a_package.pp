# Install an especific version of flask 2.1.0.

class { 'python' :
  version    => '3',
  pip        => 'present',
  dev        => 'present',
  virtualenv => 'present',
}

python::pip { 'Flask':
  pkgname    => 'Flask',
  ensure     => '2.1.0',
  virtualenv => '/var/www/project1',
}
