package main

deny[msg] {
    fruit := input[_]
    startswith(fruit, "a")

    msg = "fruit should not start with an a"
}
