package main

deny[msg] {
    input
    trace(sprintf("input: %v",[input]))
    msg = "input is true"
}
