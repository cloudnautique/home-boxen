class people::cloudnautique {
  include textmate::textmate2::release
  include redis

  class {'ruby::global':
    version => '1.9.3'
  }

  class {'packer':
    version => '0.5.1'
  }

}
