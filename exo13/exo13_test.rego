package main

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_blank_input {
    no_violations with input as {}
}

test_variable_with_description {
    no_violations with input as {"variable": { "sample": { "description": "my description"} }}
}

test_violation_for_variable_without_description {
    deny["description of variable `sample` is empty"] with input as {"variable": { "sample": { "type": "string"}}}
}

test_violation_for_other_variable_without_description {
    deny["description of variable `other` is empty"] with input as {"variable": { "other": { "type": "string"}}}
}
