# array

Array helper functions for shell scripting.


## API

### `array_join $separator $one [… $two]`

Joins an array or set of passed arguments with `$separator`.
Similar to JavaScript's `Array#join()`.

```bash
#!/usr/bin/env import
import array

arr=(1 2 3)
array_join , "${arr[@]}"
```

### `array_split $separator $str`

Splits a string based on an array or set of passed arguments with `$separator`.
Similar to JavaScript's `Array#join()`.

```bash
#!/usr/bin/env import
import array

printf "foo,bar,baz" | while array_split , part; do
  echo "$part"
done
```
