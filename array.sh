# https://stackoverflow.com/a/17841619/376773
array_join() { local IFS="$1"; shift; echo "$*"; }
