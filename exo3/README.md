# Exercice 3

## Functions

The are multiples functions in rego. You can see a list [here](https://www.openpolicyagent.org/docs/latest/policy-reference/).
In this exercice we will use `startswith` [function](https://www.openpolicyagent.org/docs/latest/policy-reference/#strings)

## Exercice 3

In this exercice, `input` will be an array containing fruits name (ex: ["orange","cherry"]).
- The rule must trigger if one fruit start with an `a` with the message `fruit should not start with an a`
- The rule should do nothing if fruits do not start with `a`

Test are already written in `exo3_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo3/

```

Or go inside `exo3` directory and

```bash
cd exo3
conftest verify --policy .
```
