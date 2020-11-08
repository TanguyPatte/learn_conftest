package fizzbuzz

is_mulitple_of_3(number) { number % 3 == 0}
is_mulitple_of_5(number) { number % 5 == 0}
is_mulitple_of_15(number) { number % 15 == 0}

deny[msg] {
  value := input.fizzbuzz[index]
  is_mulitple_of_3(index + 1)
  not is_mulitple_of_15(index + 1)
  value != "fizz"
  msg := "muliple of 3 whould be replaced by fizz"
}

deny[msg] {
  value := input.fizzbuzz[index]
  is_mulitple_of_5(index + 1)
  not is_mulitple_of_15(index + 1)
  value != "buzz"
  msg := "muliple of 5 whould be replaced by buzz"
}

deny[msg] {
  value := input.fizzbuzz[index]
  is_mulitple_of_15(index + 1)
  value != "fizzbuzz"
  msg := "muliple of 15 whould be replaced by fizzbuzz"
}
