# EXO2

# Iteration on array

Let's have a variable called `my_array`. If we want to iteration over it, we can do it like that :

```
my_array := ["banana","orange","abricot"]
fruit := my_array[index]
```
`fruit` will contain each fruits on each iteration and `index` will contains the given index.
If we have no use of `index`, we can replace it with `_`:
```
fruit := my_array[_]
```

If we want a rule that trigger if `orange` is present in the list, we can write :

```
deny[msg] {
  my_array := ["banana","orange","abricot"]
  fruit := my_array[_]
  fruit == "orange"
  msg := "orange should not be in the list"
}
```
It could also be written
```
deny[msg] {
  my_array := ["banana","orange","abricot"]
  my_array[_] == "orange"
  msg := "orange should not be in the list"
}
```


# Exercice 2

In this exercice, `input` will be an array containing environment name (ex: ["dev","prod"]).
- The rule must trigger if `input` contains `prod` with the message `prod should not be present in list`
- The rule should do nothing if `input` does not contains `prod`

Test are already written in `exo2_test.rego` file.

To run the test, use
```bash
conftest verify --policy exo2/

```

Or go inside `exo1` directory and

```bash
cd exo2
conftest verify --policy .
```
