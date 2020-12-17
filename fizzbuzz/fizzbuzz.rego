package fizzbuzz

deny[msg] {
  msg := "muliple of 3 whould be replaced by fizz"
}

deny[msg] {
  msg := "muliple of 5 whould be replaced by buzz"
}

deny[msg] {
  msg := "muliple of 15 whould be replaced by fizzbuzz"
}
