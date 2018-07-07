# https://stackoverflow.com/a/17841619/376773
array_join() { local IFS="$1"; shift; printf "%s" "$*"; }

array_split() { IFS= read -d"$1" -r "$2" || [ -n "${!2}" ]; }
