# ------------------------------------------------------------------------------
# Experimental Stuff
# ------------------------------------------------------------------------------

# Show my top 15 most used commands in my command history
alias favcmds="history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head -15"

# Swap laravel to run tests across versions for laravel upgrades
function swaplaravel() {
  mv vendor vendor-temp
  mv composer.lock composer.lock.temp

  mv vendor-alt vendor
  mv composer.lock.alt composer.lock

  mv vendor-temp vendor-alt
  mv composer.lock.temp composer.lock.alt

  compv laravel/framework
}

alias qmkf="qmk flash -kb lily58 -km jesseleite"

# Spam requests
# repeat 100 curl -s GET http://wat.test > /dev/null && echo "Requested at" $(date)

# Copy commits since latest tag to clipboard...
alias glt='git describe --tags --abbrev=0' # git latest tag
alias gcslt='git --no-pager log $(glt)..HEAD --oneline --no-decorate --first-parent --no-merges' # git commits since latest tag
alias changelog='gcslt && gcslt | pbcopy'
