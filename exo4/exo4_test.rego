package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_fruit_starting_with_an_a {
    no_violations with input as ["abricot","ananas"]
}

test_fruit_not_starting_with_an_a {
  deny["fruit should start with an a"] with input as ["ananas", "banane"]
}
