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

  repository { $dotfiles:
    source  => 'riethmayer/dotfiles',
    require => File[$my]
  }

  file { "${home}/.bashrc":
       ensure => 'link',
       target => "${dotfiles}/bashrc",
  }

  file { "${home}/.gitconfig":
       ensure => 'link',
       target => "${dotfiles}/gitconfig",
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
