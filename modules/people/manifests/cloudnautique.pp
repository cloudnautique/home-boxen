class people::cloudnautique {
  include textmate::textmate2::release
  include redis
  
  class {'java':
    update_version => '51'
  }

  class {'packer':
    version => '0.5.1'
  }

  class {'vagrant':
    version => '1.5.0'
  }

}
