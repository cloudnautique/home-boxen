class people::cloudnautique {
  include textmate::textmate2::release

  class {'ruby::global':
    version => '1.9.3'
  }

  class {'packer':
    version => '0.3.9'
  }

}
