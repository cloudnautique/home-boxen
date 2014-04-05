class people::cloudnautique {
  include textmate::textmate2::release
  include redis

  class {'packer':
    version => '0.5.1'
  }

  class {'vagrant':
    version => '1.5.0'
  }

}
