# Exercice 4

## Negation

In rego, the negation use the `not` keyword.
For example, if we don't want a string to contains `rego`, we can write
```
  not contains(my_string,"rego")
```


## Exercice 4

In this exercice, `input` will be an array containing fruits name (ex: ["orange","cherry"]).
- The rule must trigger if one fruit does not start with an `a` with the message `fruit should start with an a`
- The rule should do nothing if all fruits start with an `a`

Test are already written in `exo4_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo4/

```

Or go inside `exo4` directory and

```bash
cd exo4
conftest verify --policy .
```
