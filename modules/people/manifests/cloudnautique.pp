class people::cloudnautique {
  class {'ruby::global':
    version => '1.9.3'
  }

  ruby::plugin { 'rbenv-gemset':
    ensure => 'v0.3.0',
    source => 'jamis/rbenv-gemset'
  }
}
