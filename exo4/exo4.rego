package main

deny[msg] {
    fruit := input[_]
    not startswith(fruit, "a")

    msg = "fruit should start with an a"
}
