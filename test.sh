#!/bin/sh
set -eu
eval "$(curl -fsSL import.pw)"
import "assert@2.1.3"
source "./array.sh"


# array_join
assert_equal "$(array_join , foo)" foo
assert_equal "$(array_join , foo | wc -c)" 3

assert_equal "$(array_join , foo bar)" foo,bar
assert_equal "$(array_join , foo bar | wc -c)" 7


# array_split
i=0
printf "foo,bar,baz" | while array_split , part; do
  if [ $i -eq 0 ]; then
    assert_equal "${part}" foo
  elif [ $i -eq 1 ]; then
    assert_equal "${part}" bar
  elif [ $i -eq 2 ]; then
    assert_equal "${part}" baz
  fi
  i=$(( $i + 1 ))
done
