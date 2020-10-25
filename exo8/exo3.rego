package main

deny[msg] {

    environment := input[_]
    non_auhtorizeds := ["prod", "preprod"]
    non_auhtorizeds[_] == environment

    msg = sprintf("%v should not be present in list",[environment])
}
