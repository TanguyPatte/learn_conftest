package main

all_start_with(fruits, search) {
    count({x | fruits[x]; startswith(fruits[x], search)}) == count(fruits)

}

deny[msg] {
    #count({x | input[x]; startswith(input[x], "a")}) == count(input)
    all_start_with(input, "a")
    msg = "fruits should start with an a"
}
