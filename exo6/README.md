# Exercice 6


## Functions

We can create our own function

Function that return a boolean
```
f(x, y) {
    ...
}

# OR

f(x, y) = true {
    ...
}
```

Function that return a value
```
f(x) = "A" { x >= 90 }
f(x) = "B" { x >= 80; x < 90 }
f(x) = "C" { x >= 70; x < 80 }
```

For example:
If we want a function that tell us if a number is odd
```
is_odd(x) {
  (x % 2) == 1
}
```

If we want a function that returns `greater`, `smaller` or `equals` when given two number
```
comparaison_word(x,y) = "greater" { x > y}
comparaison_word(x,y) = "smaller" { x < y}
comparaison_word(x,y) = "equals" { x == y}
```

## Exercice 6

This exercice is the same as number 5. But we will extract the complexity of `for all` matcher is a function named `all_start_with(fruits, search)`


In this exercice, `input` will be an array containing fruits name (ex: ["orange","cherry"]).
- The rule must trigger if all fruits start with an `a` with the message `fruits should not all start with an a`
- The rule should do nothing if one or more fruits does not start with an `a`

Test are already written in `exo6_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo6/

```

Or go inside `exo6` directory and

```bash
cd exo6
conftest verify --policy .
```
