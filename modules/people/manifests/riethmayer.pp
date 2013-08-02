class people::riethmayer {
  include emacs
  include tmux
  include iterm2::stable
  include erlang
  include heroku
  include java
  include skitch
  include dropbox
  include screenhero
  include virtualbox
  include chrome
  include firefox
  include googledrive
  include graphviz
  include imagemagick
  include onepassword
  include propane
  include skype

  $home     = "/Users/${::luser}"
  $my       = "${home}/src"
  $dotfiles = "${my}/dotfiles"

  git::config::global { 'user.name':
    value => 'Jan Riethmayer'
  }

  git::config::global { 'user.email':
    value => 'jan@riethmayer.de'
  }

  git::config::global { 'alias.st':
    value => 'status'
  }
  git::config::global { 'alias.ci':
    value => 'commit'
  }

  git::config::global { 'alias.br':
    value => 'branch'
  }

  git::config::global { 'alias.co':
    value => 'checkout'
  }

  git::config::global { 'alias.df':
    value => 'diff'
  }

  git::config::global { 'alias.lg':
    value => 'log -p'
  }

  git::config::global { 'alias.who':
    value => 'shortlog -s --'
  }

  git::config::global { 'push.default':
    value => 'curent'
  }

  repository { $dotfiles:
    source  => 'riethmayer/dotfiles',
    require => File[$my]
  }

  file { "${home}/.tmux.conf":
    ensure => 'link',
    target => "${dotfiles}/tmux.conf",
  }

  file { "${home}/.profile":
    ensure => 'link',
    target => "${dotfiles}/bashrc",
  }

  file { "${home}/bin":
    ensure => 'link',
    target => "${dotfiles}/bin",
  }

  repository { "${home}/.emacs.d":
    source  => 'riethmayer/emacs'
  }

  repository { "${home}/bonusbox":
    source => 'bonusboxme/workstation'
  }

  host { 'fb.bonusbox.dev':
    ip => '192.168.88.2'
  }

  include vagrant
  vagrant::plugin { 'omnibus': }
  vagrant::plugin { 'librarian-chef': }

  include postgresql
  # to create a db:
  # postgresql::db { 'mydb': }

}
