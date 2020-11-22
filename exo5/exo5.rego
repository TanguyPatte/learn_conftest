package main

deny[msg] {
    count({x | input[x]; startswith(input[x], "a")}) == count(input)
    msg = "fruits should not all start with an a"
}
