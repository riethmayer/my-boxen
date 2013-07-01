# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",  "1.0.0"
github "gcc",      "1.0.0"
github "git",      "1.0.0"
github "homebrew", "1.1.2"
github "hub",      "1.0.0"
github "inifile",  "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",    "1.1.0"
github "nodejs",   "1.0.0"
github "nvm",      "1.0.0"
github "ruby",     "3.1.0"
github "stdlib",   "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",     "1.0.0"
github "pkgconfig", "1.0.0"
github "swig",     "1.0.0"
github "pcre",     "1.0.0"
github "xquartz",  "1.1.0"
github "sysctl",   "1.0.0"

# my stuff
github "chrome",   "1.1.1"
github "cyberduck", "1.0.0"
github "ctags", "1.0.0"
github "dropbox",  "1.1.1"
github "emacs",    "1.1.0"
github "erlang",   "1.0.1"
github "firefox", "1.1.1"
github "googledrive", "1.0.2"
github "graphviz", "1.0.0"
github "heroku",   "2.0.0"
github "imagemagick", "1.2.1"
github "iterm2",   "1.0.2"
github "java",     "1.1.1"
github "onepassword", "1.0.1"
github "propane",  "1.0.0"
github "postgresql", "1.0.2"
github "redis",    "1.0.0"
github "riak",     "1.0.1"
github "skitch",   "1.0.1"
github "skype",    "1.0.3"
github "tmux",     "1.0.2"
github "screenhero", "1.0.1"
github "spotify",  "1.0.0"
github "vagrant", "2.0.7"
github "virtualbox", "1.0.3"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
