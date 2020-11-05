package main

deny[msg] {
    variable := input.variable[variable_name]
    not variable.description
    msg = sprintf("description of variable `%v` is empty",[variable_name])
}
