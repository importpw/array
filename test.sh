#!/bin/sh
eval "`curl -fsSL import.pw`"
import "import.pw/assert@2.1.1"

source ./array.sh

assert_equal "$(array_join , foo)" foo
assert_equal "$(array_join , foo bar)" foo,bar
