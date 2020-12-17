package triangle


empty(value) {
	count(value) == 0
}

no_violations {
	empty(deny)
}

test_blank_input {
    no_violations with input as {}
}

test_violation_when_angle_sum_is_incorrect {
  triangle_with_incorrect_angles := {"triangle":{"angles": [60,60,90]}}
  deny["incorrect sum for angles : 210 > 180"] with input as triangle_with_incorrect_angles
}

test_no_violation_when_angle_sum_is_correct {
  triangle_with_correct_angles := {
    "triangle":{
      "angles":
      [60,60,60]
    }
  }

  no_violations with input as triangle_with_correct_angles
}

test_violation_when_angle_sum_is_under_180 {
  triangle_with_incorrect_angles := {
    "triangle":{
      "angles":
      [60,60,20]
    }
  }

  deny["incorrect sum for angles : 140 < 180"] with input as triangle_with_incorrect_angles
}
