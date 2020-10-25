package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_no_violation_when_fruits_does_not_start_with_an_a {
    no_violations with input as ["cerise","fraise", "orange"]
}

test_deny_when_some_fruit_start_with_an_a {
  deny["fruit should not start with an a"] with input as ["ananas", "banane"]
}
