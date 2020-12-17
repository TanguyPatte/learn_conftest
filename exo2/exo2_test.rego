package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_input_without_prod_environment {
    no_violations with input as ["dev","preprod"]
}

test_input_with_prod_environment {
  deny["prod should not be present in list"] with input as ["preprod", "prod"]
}
