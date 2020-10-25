package main


deny[msg] {
    count({x | input[x]; startswith(input[x], "a")}) == count(input)
    msg = "fruits should start with an a"
}
