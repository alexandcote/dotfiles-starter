# Functions
# --------------------------------------

base() {
    local regex=/Shopify/(.+)/?
    local command="$1"
    local current_path=$(pwd) > /dev/null 2>&1
    if [[ $current_path =~ $regex ]]; then
      eval "${command} shopify--${match[1]}"
    else
      echo "Please run this script from a Shopify project"
    fi
}

start() {
  base "iso procs start"
}

stop() {
  base "iso procs stop"
}

restart() {
  base "iso procs restart"
}

update() {
  base "/usr/bin/update"
}
