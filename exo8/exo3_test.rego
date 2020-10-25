package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_input_with_authorized_environments {
    no_violations with input as ["dev", "qualif"]
}

test_input_with_prod_environment {
  deny["prod should not be present in list"] with input as ["dev", "prod"]
}

test_input_with_preprod_environment {
  deny["preprod should not be present in list"] with input as ["dev", "preprod"]
}
