class people::cloudnautique {
  include textmate::textmate2::release
  include redis
  include chrome
  include slack
<<<<<<< HEAD
  include elasticsearch
=======
  include mysql
>>>>>>> origin/master

  class {'packer':
    version => '0.5.2'
  }

  class {'vagrant':
    version => '1.5.0'
  }


  class { 'nodejs::global':
    version => 'v0.10.26'
  }
}
