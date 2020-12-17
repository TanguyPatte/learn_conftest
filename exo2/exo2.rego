package main

deny[msg] {
    input[_] == "prod"

    msg = "prod should not be present in list"
}
