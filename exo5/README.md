# Exercice 5

## For all

In documentation we find this exemples :

```
# assert no values in set match predicate
count({x | set[x]; f(x)}) == 0

# assert all values in set make function f true
count({x | set[x]; f(x)}) == count(set)

# assert no values in set make function f true (using negation and helper rule)
not any_match

# assert all values in set make function f true (using negation and helper rule)
not any_not_match

any_match {
    set[x]
    f(x)
}

any_not_match {
    set[x]
    not f(x)
}
```


Let's take an example for the `for all` rule.
If we have an array containing programming language (`["C language","go language", "rego"]`), and we want that all string contains the word `language`,
we could write that :
```
deny[msg] {
  not count({x | input[x]; contains(input[x], "language")}) == count(input)
  msg := "`language` word is missing in one or more string"
}
```


## Exercice 5

In this exercice, `input` will be an array containing fruits name (ex: ["orange","cherry"]).
- The rule must trigger if all fruits start with an `a` with the message `fruits should not all start with an a`
- The rule should do nothing if one or more fruits does not start with an `a`

Test are already written in `exo5_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo5/

```

Or go inside `exo5` directory and

```bash
cd exo5
conftest verify --policy .
```
