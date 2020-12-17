package main

deny[msg] {
    msg = sprintf("%v should not be present in list",[environment])
}
