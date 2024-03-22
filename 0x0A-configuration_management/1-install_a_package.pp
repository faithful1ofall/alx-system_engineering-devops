# Install an especific version of flask (2.1.0)

class flask_install {
  package { 'Flask':
    ensure   => '2.1.0',
    provider => 'pip3'
  }
}
include flask_install
