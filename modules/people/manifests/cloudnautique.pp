class people::cloudnautique {
  include textmate::textmate2::release
  include redis
  include chrome
  include slack
  include mysql

  class {'packer':
    version => '0.5.2'
  }


  class { 'nodejs::global':
    version => 'v0.10.26'
  }
}
