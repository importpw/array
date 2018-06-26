#!/bin/sh
eval "`curl -fsSL import.pw`"
import "import.pw/assert@2.1.1"

source ./array.sh

assert_equal "$(array_join , foo)" foo
assert_equal "$(array_join , foo | wc -c)" 3

assert_equal "$(array_join , foo bar)" foo,bar
assert_equal "$(array_join , foo bar | wc -c)" 7
