# EXO1

# Rego and Conftest basics

Conftest will look for `deny`, `violation` and `warn` rules.
So we will name our rule this way. It is possible to add suffix to the rule name,
but we wont use that in this exercices (ex: `deny_missing_tag`)

The content of parsed files is provided in `input` variable


The rule will be true if all condition inside are true

ex:

```rego
deny[msg] {
    x := 42 # we assign 42 to x
    y := 41 # we assigne 41 to y
    x > y   # we check if x is greater than y
    msg := "x should be smaller than y"  # we assign a message in msg, it will be display if the rule applies
}
```


# Exercice 1

In this exercice, `input` will be a boolean.
- The rule must trigger if `input` is `true` with the message `input is true`
- The rule should do nothing if `input` is `false`

Test are already written in `exo1_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo1/

```

Or go inside `exo1` directory and

```bash
cd exo1
conftest verify --policy .
```
