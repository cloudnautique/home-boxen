class people::cloudnautique {
  include textmate::textmate2::release
  include redis
  include chrome
  include elasticsearch
  include mysql
  include vim
  include virtualbox
  include python

  include python::virtualenvwrapper


  class {'packer':
    version => '0.7.1'
  }

  class {'vagrant':
    version    => '1.6.3',
    completion => true,
  }


  git::config::system { 'push.default':
    value => 'current'
  }

  class { 'nodejs::global':
    version => 'v0.10.26'
  }

  vim::bundle {
    [
        'scrooloose/syntastic',
        'kien/ctrlp.vim',
        'godlygeek/tabular',
        'rodjek/vim-puppet',
    ]:
  }
}
