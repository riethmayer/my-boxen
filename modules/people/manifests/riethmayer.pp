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

  include vagrant
  vagrant::plugin { 'omnibus': }
  vagrant::plugin { 'librarian-chef': }
  
  include postgresql
  # to create a db:
  # postgresql::db { 'mydb': } 

}
