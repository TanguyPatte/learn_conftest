package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_no_violation_when_input_is_false {
    no_violations with input as false
}

test_deny_when_input_is_true {
  deny["input is true"] with input as true
}
