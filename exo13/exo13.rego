package main

deny[msg] {
    msg = sprintf("description of variable `%v` is empty",[variable_name])
}
