# Install an especific version of flask (2.1.0)
class python_setup {
  class { 'python':
    version    => 'system',
    pip        => 'present',
    dev        => 'present',
    virtualenv => 'present',
  }
}

class flask_install {
  package { 'Flask':
    ensure   => '2.1.0',
    provider => 'pip3',
    require  => Class['python_setup'],
  }
}

include python_setup
include flask_install
