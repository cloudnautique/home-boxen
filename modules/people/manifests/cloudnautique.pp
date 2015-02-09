class people::cloudnautique {
  include redis
  include chrome
  include elasticsearch
  include mysql
  include vim
  include virtualbox
  include python
  include bash
  include docker

  include python::virtualenvwrapper
  include bash::completion
  include iterm2::stable
  include iterm2::colors::solarized_light


  class {'packer':
    version => '0.7.5'
  }

  class {'vagrant':
    version    => '1.7.2',
    completion => true,
  }


  git::config::system { 'push.default':
    value => 'current'
  }

  class { 'nodejs::global':
    version => 'v0.10.29'
  }

  vim::bundle {
    [
        'scrooloose/syntastic',
        'kien/ctrlp.vim',
        'godlygeek/tabular',
        'rodjek/vim-puppet',
        'fatih/vim-go',
    ]:
  }

}
