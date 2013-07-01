class people::riethmayer {
  include emacs
  include tmux
  include iterm2::stable

  $home     = "/Users/${::luser}"
  $my       = "${home}/src"
  $dotfiles = "${my}/dotfiles"

  repository { $dotfiles:
    source  => 'riethmayer/dotfiles',
    require => File[$my]
  }
}