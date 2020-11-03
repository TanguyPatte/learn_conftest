# learn_conftest

## Rego and Conftest

Conftest is a wrapper arround rego that will parse some kind of
files like json or hcl and provide the content as input of
rego rules.

Rego rules with conftest look like this:

```rego
# The rule must be named deny, warn or violation
deny[msg] {
  fruit := input
  fruit == "apple"
  msg = "array should not contain apple"
}
```

In this example `input` is not defined in the file, it is
provided by conftest, it contains the content of the parsed files

For example if we have this file :

```
$ cat fruits.json
["apple","banana","orage"]
```

and the given rule file:

```
$ cat rule.rego
package main

deny[msg] {
  fruit := input
  fruit == "apple"
  msg = "array should not contain apple"
}
```

Running conftest should look like this :

```
$ conftest test -p rule.rego fruits.json
FAIL - fruits.json - array should not contain apple

3 tests, 2 passed, 0 warnings, 1 failure
```


## How to write rule in rego

### Specify what you don't want

In rego, we don't create rule to say what we wan't, we create rules to say what we don't want.
Given an array of fruits, if I wan't that all my fruit start with an "a"
the rule will be : is there a fruit that does not start with an "a".

### Match all conditions

The rules can be understood like that :
Rule is true if condition A AND condition B AND condition C

```
my_rule = true {
  condition A
  condition B
  condition C
}
```

By default TODO it si true
