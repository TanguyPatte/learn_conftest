package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_no_violation_if_one_fruit_does_not_start_with_an_a {
    no_violations with input as ["abricot","banane"]
}

test_deny_when_all_fruits_start_with_an_a {
  deny["fruits should not all start with an a"] with input as ["ananas", "abricot"]
}
