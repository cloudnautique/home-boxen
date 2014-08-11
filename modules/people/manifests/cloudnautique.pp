class people::cloudnautique {
  include textmate::textmate2::release
  include redis
  include chrome
  include slack
  include elasticsearch
  include mysql

  class {'packer':
    version => '0.5.2'
  }

  class {'vagrant':
    version    => '1.6.3',
    completion => true,
  }


  class { 'nodejs::global':
    version => 'v0.10.26'
  }
}
