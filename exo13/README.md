# Exo 13

## Check your terraform code

Let's write our first terraform rule.

When running `conftest test -p my/path/to/policies *.tf`, conftest
will apply all rules to your `tf` files.
It will wrap all your `resource`, `data`, `variables`… in a simple array named `input`.

Our rules will look for specific things iterating over input.


In this exercice, we will write a rule to check that every `variables` have a description

```terraform
# variable.tf

variable "environment" {
  type        = string
  description = "Environment_name (ex : `dev`)"
}
```


The test are already written. To run the tests, execute :
```
conftest verify -p exo13
```
