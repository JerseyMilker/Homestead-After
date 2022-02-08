# ------------------------------------------------------------------------------
# Aliases and functions for PHP
# ------------------------------------------------------------------------------

alias psr1="php-cs-fixer fix --level=psr1"
alias psr2="php-cs-fixer fix --level=psr2"

# Configure php settings and extensions for current version
phpc() {
  local confd
  confd=$(php --ini | ag -o "[^\s]*conf\.d[^/]")

  if [ -z "$1" ]; then
    cd $confd
    return
  fi

  if [ "$1" = 'all' ] || [ "$1" = 'redis' ]; then
    sudo pecl install redis
  fi

  if [ "$1" = 'all' ] || [ "$1" = 'xdebug' ]; then
    sudo pecl install xdebug
    [ -f "$confd/ext-xdebug.ini" ] && rm "$confd/ext-xdebug.ini"
    [ -f "$confd/ext-xdebug.ini.disabled" ] && rm "$confd/ext-xdebug.ini.disabled"
    cp ~/.dotfiles/php/ext-xdebug.ini $confd
    echo "Copied ext-xdebug.ini"
  fi

  if [ "$1" = 'all' ] || [ "$1" = 'memory' ]; then
    [ -f "$confd/php-memory-limits.ini" ] && rm "$confd/php-memory-limits.ini"
    cp ~/.dotfiles/php/php-memory-limits.ini $confd
    echo "Copied php-memory-limits.ini"
  fi
}
