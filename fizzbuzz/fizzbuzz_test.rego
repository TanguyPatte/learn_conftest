package fizzbuzz

empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_blank_input {
    no_violations with input as {}
}

test_violation_when_3_is_written {
  incorrect_fizzbuzz := {"fizzbuzz":[1,2,3,4]}
  deny["muliple of 3 whould be replaced by fizz"] with input as incorrect_fizzbuzz
}

test_violation_when_5_is_written {
  incorrect_fizzbuzz := {"fizzbuzz":[1,2,"fizz",4,5]}
  deny["muliple of 5 whould be replaced by buzz"] with input as incorrect_fizzbuzz
}

test_violation_when_15_is_written {
  incorrect_fizzbuzz := {"fizzbuzz":[1,2,"fizz",4,"buzz","fizz",7,8,"fizz","buzz",11,"fizz",13,14,15]}
  deny["muliple of 15 whould be replaced by fizzbuzz"] with input as incorrect_fizzbuzz
  not deny["muliple of 5 whould be replaced by buzz"] with input as incorrect_fizzbuzz
  not deny["muliple of 3 whould be replaced by fizz"] with input as incorrect_fizzbuzz
}
